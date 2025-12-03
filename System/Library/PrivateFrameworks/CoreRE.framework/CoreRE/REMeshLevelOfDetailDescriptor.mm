@interface REMeshLevelOfDetailDescriptor
- (BOOL)validateWithModelPartCount:(unint64_t)count error:(id *)error;
- (REMeshLevelOfDetailDescriptor)initWithCoder:(id)coder;
- (REMeshLevelOfDetailDescriptor)initWithPartIndicesOnModel:(id)model minScreenArea:(float)area maxViewDepth:(float)depth;
- (unint64_t)estimateContainerSize;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMeshLevelOfDetailDescriptor

- (REMeshLevelOfDetailDescriptor)initWithPartIndicesOnModel:(id)model minScreenArea:(float)area maxViewDepth:(float)depth
{
  modelCopy = model;
  v13.receiver = self;
  v13.super_class = REMeshLevelOfDetailDescriptor;
  v9 = [(REMeshLevelOfDetailDescriptor *)&v13 init];
  if (v9)
  {
    v10 = [modelCopy copy];
    modelPartIndices = v9->_modelPartIndices;
    v9->_modelPartIndices = v10;

    v9->_minScreenArea = area;
    v9->_maxViewDepth = depth;
  }

  return v9;
}

- (REMeshLevelOfDetailDescriptor)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"modelPartIndices"];
  modelPartIndices = self->_modelPartIndices;
  self->_modelPartIndices = v8;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_modelPartIndices;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v17 + 1) + 8 * v13++) unsignedLongValue];
      }

      while (v11 != v13);
      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  [coderCopy decodeFloatForKey:@"minScreenArea"];
  self->_minScreenArea = v14;
  [coderCopy decodeFloatForKey:@"maxViewDepth"];
  self->_maxViewDepth = v15;

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_modelPartIndices forKey:@"modelPartIndices"];
  *&v4 = self->_minScreenArea;
  [coderCopy encodeFloat:@"minScreenArea" forKey:v4];
  *&v5 = self->_maxViewDepth;
  [coderCopy encodeFloat:@"maxViewDepth" forKey:v5];
}

- (BOOL)validateWithModelPartCount:(unint64_t)count error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_modelPartIndices;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v12 + 1) + 8 * i) unsignedLongValue] >= count)
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (unint64_t)estimateContainerSize
{
  v2 = objc_opt_class();

  return class_getInstanceSize(v2);
}

@end
@interface CHSConfiguredWidgetContainerDescriptorsBox
- (CHSConfiguredWidgetContainerDescriptorsBox)initWithCoder:(id)coder;
- (CHSConfiguredWidgetContainerDescriptorsBox)initWithDescriptors:(id)descriptors;
@end

@implementation CHSConfiguredWidgetContainerDescriptorsBox

- (CHSConfiguredWidgetContainerDescriptorsBox)initWithDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v9.receiver = self;
  v9.super_class = CHSConfiguredWidgetContainerDescriptorsBox;
  v5 = [(CHSConfiguredWidgetContainerDescriptorsBox *)&v9 init];
  if (v5)
  {
    v6 = [descriptorsCopy copy];
    descriptors = v5->_descriptors;
    v5->_descriptors = v6;
  }

  return v5;
}

- (CHSConfiguredWidgetContainerDescriptorsBox)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"descriptors"];

  v10 = __60__CHSConfiguredWidgetContainerDescriptorsBox_initWithCoder___block_invoke(v9, v8);

  if (v10)
  {
    self = [(CHSConfiguredWidgetContainerDescriptorsBox *)self initWithDescriptors:v10];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

id __60__CHSConfiguredWidgetContainerDescriptorsBox_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = *v12;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v11 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            goto LABEL_12;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v8 = v3;
  }

  else
  {
LABEL_12:
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end
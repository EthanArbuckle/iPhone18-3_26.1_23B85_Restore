@interface MNGuidanceJunctionViewInfo
- (MNGuidanceJunctionViewInfo)initWithCoder:(id)coder;
- (MNGuidanceJunctionViewInfo)initWithID:(id)d images:(id)images;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNGuidanceJunctionViewInfo

- (void)encodeWithCoder:(id)coder
{
  uniqueID = self->_uniqueID;
  coderCopy = coder;
  [coderCopy encodeObject:uniqueID forKey:@"_uniqueID"];
  [coderCopy encodeObject:self->_images forKey:@"_images"];
}

- (MNGuidanceJunctionViewInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = MNGuidanceJunctionViewInfo;
  v5 = [(MNGuidanceJunctionViewInfo *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_uniqueID"];
    uniqueID = v5->_uniqueID;
    v5->_uniqueID = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"_images"];
    images = v5->_images;
    v5->_images = v11;
  }

  return v5;
}

- (id)description
{
  v19 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_images;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        [string appendFormat:@"%ld", objc_msgSend(v9, "imageID")];
        lastObject = [(NSArray *)self->_images lastObject];

        if (lastObject != v9)
        {
          [string appendString:{@", "}];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UUID: %@, Image IDs: %@", self->_uniqueID, string, v14];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (MNGuidanceJunctionViewInfo)initWithID:(id)d images:(id)images
{
  dCopy = d;
  imagesCopy = images;
  v12.receiver = self;
  v12.super_class = MNGuidanceJunctionViewInfo;
  v9 = [(MNGuidanceJunctionViewInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uniqueID, d);
    objc_storeStrong(&v10->_images, images);
  }

  return v10;
}

@end
@interface MNGuidanceJunctionViewInfo
- (MNGuidanceJunctionViewInfo)initWithCoder:(id)a3;
- (MNGuidanceJunctionViewInfo)initWithID:(id)a3 images:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNGuidanceJunctionViewInfo

- (void)encodeWithCoder:(id)a3
{
  uniqueID = self->_uniqueID;
  v5 = a3;
  [v5 encodeObject:uniqueID forKey:@"_uniqueID"];
  [v5 encodeObject:self->_images forKey:@"_images"];
}

- (MNGuidanceJunctionViewInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MNGuidanceJunctionViewInfo;
  v5 = [(MNGuidanceJunctionViewInfo *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_uniqueID"];
    uniqueID = v5->_uniqueID;
    v5->_uniqueID = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_images"];
    images = v5->_images;
    v5->_images = v11;
  }

  return v5;
}

- (id)description
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] string];
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
        [v3 appendFormat:@"%ld", objc_msgSend(v9, "imageID")];
        v10 = [(NSArray *)self->_images lastObject];

        if (v10 != v9)
        {
          [v3 appendString:{@", "}];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UUID: %@, Image IDs: %@", self->_uniqueID, v3, v14];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (MNGuidanceJunctionViewInfo)initWithID:(id)a3 images:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MNGuidanceJunctionViewInfo;
  v9 = [(MNGuidanceJunctionViewInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uniqueID, a3);
    objc_storeStrong(&v10->_images, a4);
  }

  return v10;
}

@end
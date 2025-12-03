@interface PKRemoteImageSet
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRemoteImageSet:(id)set;
- (PKRemoteImageSet)initWithCoder:(id)coder;
- (PKRemoteImageSet)initWithName:(id)name dictionaries:(id)dictionaries;
- (PKRemoteImageSet)initWithName:(id)name images:(id)images;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)imageForScaleFactor:(unint64_t)factor;
- (id)imageForScaleFactorValue:(double)value;
- (unint64_t)hash;
- (void)addURL:(id)l forScaleFactor:(unint64_t)factor;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKRemoteImageSet

- (PKRemoteImageSet)initWithName:(id)name dictionaries:(id)dictionaries
{
  nameCopy = name;
  v7 = [dictionaries pk_arrayBySafelyApplyingBlock:&__block_literal_global_140];
  v8 = [(PKRemoteImageSet *)self initWithName:nameCopy images:v7];

  return v8;
}

PKRemoteImage *__46__PKRemoteImageSet_initWithName_dictionaries___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKRemoteImage alloc] initWithDictionary:v2];

  return v3;
}

- (PKRemoteImageSet)initWithName:(id)name images:(id)images
{
  nameCopy = name;
  imagesCopy = images;
  v17.receiver = self;
  v17.super_class = PKRemoteImageSet;
  v9 = [(PKRemoteImageSet *)&v17 init];
  v10 = v9;
  if (!v9)
  {
LABEL_8:
    v14 = v10;
    goto LABEL_9;
  }

  objc_storeStrong(&v9->_name, name);
  if (imagesCopy)
  {
    v11 = [MEMORY[0x1E695DFD8] setWithArray:imagesCopy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [MEMORY[0x1E695DFD8] set];
    }

    images = v10->_images;
    v10->_images = v13;

    goto LABEL_8;
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (id)imageForScaleFactor:(unint64_t)factor
{
  factorCopy = factor;
  v16 = *MEMORY[0x1E69E9840];
  if (factor)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_images;
    v5 = [(NSSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if ([v9 scaleFactor] == factorCopy)
          {
            factorCopy = v9;
            goto LABEL_12;
          }
        }

        v6 = [(NSSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    factorCopy = 0;
LABEL_12:
  }

  return factorCopy;
}

- (id)imageForScaleFactorValue:(double)value
{
  if (value <= 2.0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  return [(PKRemoteImageSet *)self imageForScaleFactor:v3];
}

- (void)addURL:(id)l forScaleFactor:(unint64_t)factor
{
  if (l && factor)
  {
    lCopy = l;
    v12 = [(PKRemoteImageSet *)self imageForScaleFactor:factor];
    if (v12)
    {
      v7 = [(NSSet *)self->_images pk_setByRemovingObject:v12];
      images = self->_images;
      self->_images = v7;
    }

    v9 = [[PKRemoteImage alloc] initWithRemoteURL:lCopy scaleFactor:factor];

    if (v9)
    {
      v10 = [(NSSet *)self->_images setByAddingObject:v9];
      v11 = self->_images;
      self->_images = v10;
    }
  }
}

- (id)description
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"name: '%@'; ", self->_name];
  if ([(NSSet *)self->_images count])
  {
    images = &stru_1F227FD28;
  }

  else
  {
    images = self->_images;
  }

  [v3 appendFormat:@"images: %@\n", images];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_images;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) description];
        [v3 appendFormat:@"- %@\n", v10];
      }

      v7 = [(NSSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKRemoteImageSet *)self isEqualToRemoteImageSet:v5];
  }

  return v6;
}

- (BOOL)isEqualToRemoteImageSet:(id)set
{
  setCopy = set;
  v5 = setCopy;
  if (!setCopy)
  {
    goto LABEL_11;
  }

  v6 = *(setCopy + 1);
  v7 = self->_name;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (!v7 || !v8)
    {

LABEL_11:
      v12 = 0;
      goto LABEL_12;
    }

    v10 = [(NSString *)v7 isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_11;
    }
  }

  images = self->_images;
  if (images)
  {
    v12 = [(NSSet *)images isEqual:self->_images];
  }

  else
  {
    v12 = 1;
  }

LABEL_12:

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_name];
  [v3 safelyAddObject:self->_images];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (PKRemoteImageSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKRemoteImageSet;
  v5 = [(PKRemoteImageSet *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"images"];
    images = v5->_images;
    v5->_images = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_images forKey:@"images"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  allObjects = [(NSSet *)self->_images allObjects];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __33__PKRemoteImageSet_copyWithZone___block_invoke;
  v13[3] = &__block_descriptor_40_e23__16__0__PKRemoteImage_8l;
  v13[4] = zone;
  v9 = [allObjects pk_arrayBySafelyApplyingBlock:v13];

  if (v9)
  {
    [MEMORY[0x1E695DFD8] setWithArray:v9];
  }

  else
  {
    [MEMORY[0x1E695DFD8] set];
  }
  v10 = ;
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

id __33__PKRemoteImageSet_copyWithZone___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copyWithZone:*(a1 + 32)];

  return v2;
}

@end
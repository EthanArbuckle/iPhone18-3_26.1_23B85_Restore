@interface IFImageBag
+ (id)imageBagWithResourcesNamed:(id)a3 directory:(id)a4;
+ (id)imageBagWithResourcesNamed:(id)a3 fromBundle:(id)a4 subdirectory:(id)a5;
+ (id)imageBagWithResourcesNames:(id)a3 fromBundle:(id)a4;
- (IFImageBag)init;
- (IFImageBag)initWithImages:(id)a3;
- (NSArray)images;
- (id)debugDescription;
- (id)imageForSize:(CGSize)a3 scale:(double)a4;
- (id)imagesForScale:(double)a3;
- (void)insertImage:(id)a3;
@end

@implementation IFImageBag

- (IFImageBag)init
{
  v7.receiver = self;
  v7.super_class = IFImageBag;
  v2 = [(IFImageBag *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_opt_new();
    imagesByScale = v3->_imagesByScale;
    v3->_imagesByScale = v4;
  }

  return v3;
}

- (IFImageBag)initWithImages:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(IFImageBag *)self init];
  if (v5)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(IFImageBag *)v5 insertImage:*(*(&v12 + 1) + 8 * v10++), v12];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  return v5;
}

- (id)imagesForScale:(double)a3
{
  imagesByScale = self->_imagesByScale;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v7 = [(NSMutableDictionary *)imagesByScale objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = 3.0;
    do
    {
      v9 = self->_imagesByScale;
      v10 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
      v7 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:v10];

      v8 = v8 + -1.0;
    }

    while (v8 >= 1.0 && v7 == 0);
    if (!v7)
    {
      v7 = objc_opt_new();
      v12 = self->_imagesByScale;
      v13 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
      [(NSMutableDictionary *)v12 setObject:v7 forKeyedSubscript:v13];
    }
  }

  return v7;
}

- (id)imageForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(IFImageBag *)self imagesForScale:a4];
  v9 = __33__IFImageBag_imageForSize_scale___block_invoke(width, height, v8, v8);
  v10 = v9;
  if (width >= height)
  {
    v11 = width;
  }

  else
  {
    v11 = height;
  }

  v12 = v11 * a4;
  [v9 dimension];
  v14 = v13;
  [v10 scale];
  if (v14 * v15 < v12)
  {
    v16 = 2;
    v17 = 1.0;
    do
    {
      if (v17 != a4)
      {
        v18 = [(IFImageBag *)self imagesForScale:v17];

        v20 = __33__IFImageBag_imageForSize_scale___block_invoke(width, height, v19, v18);
        [v20 dimension];
        v22 = v21;
        [v20 scale];
        v24 = v22 * v23;
        [v10 dimension];
        v26 = v25;
        [v10 scale];
        if (v24 >= v26 * v27)
        {
          v28 = v20;

          v10 = v28;
        }

        v8 = v18;
      }

      v17 = v17 + 1.0;
      --v16;
    }

    while (v16);
    v29 = IFDefaultLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      [IFImageBag imageForSize:v10 scale:v29];
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

id __33__IFImageBag_imageForSize_scale___block_invoke(double a1, double a2, uint64_t a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 firstObject];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        [v6 size];
        v14 = v13;
        [v12 size];
        if (v15 == a2)
        {
          v19 = v12;

          v6 = v19;
          goto LABEL_22;
        }

        if (v14 < v15 && v15 < a2)
        {
          goto LABEL_17;
        }

        v17 = v14 >= a2;
        if (v14 >= v15)
        {
          v17 = 1;
        }

        if (v15 < v14)
        {
          v17 = 0;
        }

        if (v15 >= a2 && !v17)
        {
LABEL_17:
          v18 = v12;

          v6 = v18;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

  return v6;
}

- (void)insertImage:(id)a3
{
  v21 = a3;
  os_unfair_lock_lock(&self->_lock);
  imagesByScale = self->_imagesByScale;
  v5 = MEMORY[0x1E696AD98];
  [v21 scale];
  v6 = [v5 numberWithDouble:?];
  v7 = [(NSMutableDictionary *)imagesByScale objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = objc_opt_new();
    v8 = self->_imagesByScale;
    v9 = MEMORY[0x1E696AD98];
    [v21 scale];
    v10 = [v9 numberWithDouble:?];
    [(NSMutableDictionary *)v8 setObject:v7 forKeyedSubscript:v10];
  }

  [v21 size];
  v12 = v11;
  [v21 size];
  if (v12 >= v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  if ([v7 count])
  {
    v15 = 0;
    while (1)
    {
      v16 = [v7 objectAtIndexedSubscript:v15];
      [v16 size];
      v18 = v17;
      [v16 size];
      if (v18 >= v19)
      {
        v20 = v18;
      }

      else
      {
        v20 = v19;
      }

      if (v14 < v20)
      {
        [v7 insertObject:v21 atIndex:v15];
        goto LABEL_17;
      }

      if (v14 == v20)
      {
        break;
      }

      if ([v7 count] <= ++v15)
      {
        goto LABEL_14;
      }
    }

    [v7 replaceObjectAtIndex:v15 withObject:v21];
LABEL_17:
  }

  else
  {
LABEL_14:
    [v7 addObject:v21];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)images
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  os_unfair_lock_lock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(NSMutableDictionary *)self->_imagesByScale allValues];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObjectsFromArray:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = [v3 copy];

  return v9;
}

- (id)debugDescription
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v20.receiver = self;
  v20.super_class = IFImageBag;
  v4 = [(IFImageBag *)&v20 debugDescription];
  v5 = [v3 stringWithString:v4];

  [v5 appendString:@"\n"];
  os_unfair_lock_lock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(NSMutableDictionary *)self->_imagesByScale allKeys];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_imagesByScale objectForKeyedSubscript:v11];
        v13 = [v12 debugDescription];
        [v5 appendFormat:@"Scale: %@ -> %@", v11, v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_lock);
  v14 = [v5 copy];

  return v14;
}

+ (id)imageBagWithResourcesNames:(id)a3 fromBundle:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v40 = a4;
  v39 = [MEMORY[0x1E695DF70] array];
  v38 = objc_opt_new();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v45 objects:v50 count:16];
  v37 = v6;
  if (v7)
  {
    v8 = v7;
    v9 = *v46;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v46 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v45 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 pathExtension];
          if ([(__CFString *)v12 length])
          {
            v13 = [v11 stringByDeletingPathExtension];
          }

          else
          {

            v13 = v11;
            v12 = @"png";
          }

          if (v12)
          {
            v14 = v13 == 0;
          }

          else
          {
            v14 = 1;
          }

          if (!v14)
          {
            v15 = [v13 stringByAppendingPathExtension:v12];
            if (v15)
            {
              [v38 addObject:v15];
            }

            if (([v13 hasSuffix:{@"2x", v37}] & 1) == 0 && (objc_msgSend(v13, "hasSuffix:", @"3x") & 1) == 0)
            {
              v16 = [v13 stringByAppendingString:@"@2x"];
              v17 = [v16 stringByAppendingPathExtension:v12];

              if (v17)
              {
                [v38 addObject:v17];
              }

              v18 = [v13 stringByAppendingString:@"@3x"];
              v19 = [v18 stringByAppendingPathExtension:v12];

              if (v19)
              {
                [v38 addObject:v19];
              }

              v6 = v37;
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v8);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v20 = v38;
  v21 = [v20 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v42;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v42 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v41 + 1) + 8 * j);
        v26 = [v25 stringByDeletingPathExtension];
        v27 = [v25 pathExtension];
        v28 = [v40 URLForResource:v26 withExtension:v27];
        if (v28)
        {
          v29 = [IFResourceMetadata metadataWithFileName:v26];
          v30 = [v29 scale];
          if (v30)
          {
            v31 = [v29 scale];
            [v31 doubleValue];
            v33 = v32;
          }

          else
          {
            v33 = 1.0;
          }

          v34 = [[IFImage alloc] initWithContentsOfURL:v28 scale:v33];
          if (v34)
          {
            [v39 addObject:v34];
          }
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v22);
  }

  if ([v39 count])
  {
    v35 = [[IFImageBag alloc] initWithImages:v39];
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

+ (id)imageBagWithResourcesNamed:(id)a3 fromBundle:(id)a4 subdirectory:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v7 = a4;
  v8 = a5;
  [MEMORY[0x1E695DF70] array];
  v28 = v27 = v7;
  v26 = v8;
  [v7 URLsForResourcesWithExtension:@"png" subdirectory:v8];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v36 = 0u;
  v31 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v31)
  {
    v30 = *v34;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v34 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        v11 = [v10 lastPathComponent];
        v12 = [v11 stringByDeletingPathExtension];

        v13 = [IFResourceMetadata metadataWithFileName:v12];
        v14 = [v13 name];
        v15 = [v13 scale];
        v16 = MEMORY[0x1E696AEC0];
        v17 = [v13 dimension];
        v18 = [v17 intValue];
        v19 = [v13 dimension];
        v20 = [v16 stringWithFormat:@"%@%dx%d", v14, v18, objc_msgSend(v19, "intValue")];

        if (([v14 isEqualToString:v32] & 1) != 0 || objc_msgSend(v20, "isEqualToString:", v32))
        {
          if (v15)
          {
            [v15 doubleValue];
            v22 = v21;
          }

          else
          {
            v22 = 1.0;
          }

          v23 = [[IFImage alloc] initWithContentsOfURL:v10 scale:v22];
          if (v23)
          {
            [v28 addObject:v23];
          }
        }
      }

      v31 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v31);
  }

  if ([v28 count])
  {
    v24 = [[IFImageBag alloc] initWithImages:v28];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

+ (id)imageBagWithResourcesNamed:(id)a3 directory:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v5 = a4;
  v26 = [MEMORY[0x1E695DF70] array];
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v25 = v5;
  v7 = [v6 enumeratorAtURL:v5 includingPropertiesForKeys:MEMORY[0x1E695E0F0] options:7 errorHandler:0];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    v12 = *MEMORY[0x1E69637F8];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        if ([v14 _IF_conformsToUTI:v12])
        {
          v15 = [v14 lastPathComponent];
          v16 = [v15 stringByDeletingPathExtension];

          v17 = [IFResourceMetadata metadataWithFileName:v16];
          v18 = [v17 name];
          v19 = [v17 scale];
          if ([v18 isEqualToString:v27])
          {
            if (v19)
            {
              [v19 doubleValue];
              v21 = v20;
            }

            else
            {
              v21 = 1.0;
            }

            v22 = [[IFImage alloc] initWithContentsOfURL:v14 scale:v21];
            [v26 addObject:v22];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v10);
  }

  if ([v26 count])
  {
    v23 = [[IFImageBag alloc] initWithImages:v26];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)imageForSize:(uint64_t)a1 scale:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1B9DEC000, a2, OS_LOG_TYPE_DEBUG, "IFImageBag picked an image out of the requested scale to avoid upsampling the source image %@", &v2, 0xCu);
}

@end
@interface BLItemImageCollection
- (BLItemImageCollection)initWithImageCollection:(id)a3;
- (BLItemImageCollection)initWithItemImages:(id)a3;
- (id)_imagesForSize:(CGSize)a3 scale:(double)a4;
- (id)_newImagesForDictionary:(id)a3;
- (id)bestImageForSize:(CGSize)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)imagesForKind:(id)a3;
- (id)imagesForSize:(CGSize)a3;
@end

@implementation BLItemImageCollection

- (BLItemImageCollection)initWithImageCollection:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = [MEMORY[0x277CBEA60] arrayWithObject:v3];

      v3 = v5;
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [(BLItemImageCollection *)self _newImagesForDictionary:v11];
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v13 = v12;
          v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v23;
            do
            {
              v17 = 0;
              do
              {
                if (*v23 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                [v4 addObject:*(*(&v22 + 1) + 8 * v17++)];
              }

              while (v15 != v17);
              v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v15);
          }
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  v18 = [(BLItemImageCollection *)self initWithItemImages:v4];
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BLItemImageCollection)initWithItemImages:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BLItemImageCollection;
  v5 = [(BLItemImageCollection *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    itemImages = v5->_itemImages;
    v5->_itemImages = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSArray *)self->_itemImages copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (id)bestImageForSize:(CGSize)a3
{
  v3 = [(BLItemImageCollection *)self imagesForSize:a3.width, a3.height];
  if ([v3 count])
  {
    v4 = [v3 lastObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)imagesForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  GSMainScreenScaleFactor();
  v8 = [(BLItemImageCollection *)self _imagesForSize:width scale:height, v7];
  [v6 addObjectsFromArray:v8];

  if (![v6 count])
  {
    v9 = [(BLItemImageCollection *)self _imagesForSize:width scale:height, 0.0];
    [v6 addObjectsFromArray:v9];
  }

  v10 = [v6 allObjects];
  v11 = [v10 sortedArrayUsingFunction:sub_241D4F748 context:0];

  return v11;
}

- (id)imagesForKind:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEB18] array];
  GSMainScreenScaleFactor();
  v8 = v7;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = self->_itemImages;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = v8;
    v13 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [v15 imageKind];
        v17 = [v16 isEqualToString:v4];

        if (v17)
        {
          [v15 imageScale];
          if (v18 == v12)
          {
            [v6 addObject:v15];
          }

          [v5 addObject:v15];
        }
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  if ([v6 count])
  {
    v19 = v6;
  }

  else
  {
    v19 = v5;
  }

  v20 = [v19 sortedArrayUsingFunction:sub_241D4F748 context:{0, v23}];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_imagesForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v59 = *MEMORY[0x277D85DE8];
  v8 = [MEMORY[0x277CBEB18] array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v9 = self->_itemImages;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v53;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v53 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v52 + 1) + 8 * i);
        [v14 imageSize];
        if (width == v16 && height == v15)
        {
          if (a4 < 0.00000011920929 || ([v14 imageScale], v18 == a4))
          {
            [v8 addObject:v14];
          }
        }
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v11);
  }

  if (![v8 count])
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v19 = self->_itemImages;
    v20 = [(NSArray *)v19 countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v49;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v49 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v48 + 1) + 8 * j);
          [v24 imageSize];
          if (BLItemImageSizeEqualToSize(width, height, v25, v26))
          {
            if (a4 < 0.00000011920929 || ([v24 imageScale], v27 == a4))
            {
              [v8 addObject:v24];
            }
          }
        }

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v48 objects:v57 count:16];
      }

      while (v21);
    }
  }

  if (![v8 count])
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v28 = self->_itemImages;
    v29 = [(NSArray *)v28 countByEnumeratingWithState:&v44 objects:v56 count:16];
    if (!v29)
    {
      v31 = v28;
      goto LABEL_44;
    }

    v30 = v29;
    v31 = 0;
    v32 = *v45;
    v33 = 1.79769313e308;
    v34 = width / height;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v45 != v32)
        {
          objc_enumerationMutation(v28);
        }

        v36 = *(*(&v44 + 1) + 8 * k);
        if (a4 >= 0.00000011920929)
        {
          [*(*(&v44 + 1) + 8 * k) imageScale];
          if (v37 != a4)
          {
            continue;
          }
        }

        [v36 imageSize];
        v40 = vabdd_f64(v34, v38 / v39);
        if (v40 < v33)
        {
          v41 = v36;

          v33 = v40;
          v31 = v41;
        }
      }

      v30 = [(NSArray *)v28 countByEnumeratingWithState:&v44 objects:v56 count:16];
    }

    while (v30);

    if (v31)
    {
      [v8 addObject:v31];
LABEL_44:
    }
  }

  v42 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_newImagesForDictionary:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [v3 objectForKey:@"image-type"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = [v5 objectForKey:v10];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [[BLItemArtworkImage alloc] initWithArtworkDictionary:v11];
            v13 = [(BLItemArtworkImage *)v12 URLString];

            if (v13)
            {
              [(BLItemArtworkImage *)v12 setImageKindWithTypeName:v4 variantName:v10];
              [v18 addObject:v12];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v14 = [[BLItemArtworkImage alloc] initWithArtworkDictionary:v3];
    v15 = [(BLItemArtworkImage *)v14 URLString];

    if (v15)
    {
      [v18 addObject:v14];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v18;
}

@end
@interface CKImageBackgroundColorUtility
- (CKImageBackgroundColorUtility)initWithImage:(id)image;
- (void)analyze;
@end

@implementation CKImageBackgroundColorUtility

- (CKImageBackgroundColorUtility)initWithImage:(id)image
{
  imageCopy = image;
  v9.receiver = self;
  v9.super_class = CKImageBackgroundColorUtility;
  v6 = [(CKImageBackgroundColorUtility *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_image, image);
  }

  return v7;
}

- (void)analyze
{
  components[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AB50]);
  selfCopy = self;
  space = CGColorSpaceCreateDeviceRGB();
  CopyWithColorSpace = CGImageCreateCopyWithColorSpace([(UIImage *)self->_image CGImage], space);
  DataProvider = CGImageGetDataProvider(CopyWithColorSpace);
  cf = CGDataProviderCopyData(DataProvider);
  BytePtr = CFDataGetBytePtr(cf);
  BitsPerPixel = CGImageGetBitsPerPixel(CopyWithColorSpace);
  BitsPerComponent = CGImageGetBitsPerComponent(CopyWithColorSpace);
  BytesPerRow = CGImageGetBytesPerRow(CopyWithColorSpace);
  Width = CGImageGetWidth(CopyWithColorSpace);
  v65 = CopyWithColorSpace;
  Height = CGImageGetHeight(CopyWithColorSpace);
  v74 = Width;
  if (Width)
  {
    v12 = Height;
    v13 = 0;
    v70 = BitsPerPixel / BitsPerComponent;
    do
    {
      if (v12)
      {
        v14 = 0;
        v15 = v12;
        do
        {
          v16 = &BytePtr[v13 * v70 + v14 * BytesPerRow];
          LOBYTE(v11) = *v16;
          v17 = v11 / 255.0;
          components[0] = v17;
          LOBYTE(v17) = v16[1];
          v18 = *&v17 / 255.0;
          components[1] = v18;
          LOBYTE(v18) = v16[2];
          components[2] = *&v18 / 255.0;
          v19 = CGColorCreate(space, components);
          v20 = [objc_alloc(MEMORY[0x1E69DC888]) initWithCGColor:v19];
          if (v19)
          {
            CFRelease(v19);
          }

          if (([v20 ck_isVeryDark] & 1) == 0 && (objc_msgSend(v20, "ck_isVeryLight") & 1) == 0)
          {
            [v3 addObject:v20];
          }

          ++v14;
          --v15;
        }

        while (v15);
      }

      if ([v3 count] > 0x20)
      {
        break;
      }

      ++v13;
    }

    while (v13 != v74);
  }

  v75 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v21 = v3;
  v22 = [v21 countByEnumeratingWithState:&v88 objects:v95 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v89;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v89 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v88 + 1) + 8 * i);
        v27 = [v21 countForObject:v26];
        v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v27];
        [v75 setObject:v28 forKeyedSubscript:v26];
      }

      v23 = [v21 countByEnumeratingWithState:&v88 objects:v95 count:16];
    }

    while (v23);
  }

  v63 = v21;

  v29 = [v75 keysSortedByValueUsingSelector:?];
  reverseObjectEnumerator = [v29 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = allObjects;
  v33 = [obj countByEnumeratingWithState:&v84 objects:v94 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v85;
    v67 = *v85;
    do
    {
      v36 = 0;
      v68 = v34;
      do
      {
        if (*v85 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v37 = *(*(&v84 + 1) + 8 * v36);
        if ([v32 count])
        {
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v38 = [v32 keysSortedByValueUsingSelector:sel_compare_];
          reverseObjectEnumerator2 = [v38 reverseObjectEnumerator];
          allObjects2 = [reverseObjectEnumerator2 allObjects];

          v41 = [allObjects2 countByEnumeratingWithState:&v80 objects:v93 count:16];
          if (v41)
          {
            v42 = v41;
            v73 = v36;
            v43 = *v81;
            do
            {
              for (j = 0; j != v42; ++j)
              {
                if (*v81 != v43)
                {
                  objc_enumerationMutation(allObjects2);
                }

                if ([*(*(&v80 + 1) + 8 * j) ck_isCloseToColor:v37])
                {
                  v45 = MEMORY[0x1E696AD98];
                  v46 = [v32 objectForKeyedSubscript:v37];
                  unsignedIntValue = [v46 unsignedIntValue];
                  v48 = [v75 objectForKeyedSubscript:v37];
                  v49 = [v45 numberWithUnsignedInt:{objc_msgSend(v48, "unsignedIntValue") + unsignedIntValue}];
                  [v32 setObject:v49 forKeyedSubscript:v37];
                }

                else
                {
                  v46 = [v75 objectForKeyedSubscript:v37];
                  [v32 setObject:v46 forKeyedSubscript:v37];
                }
              }

              v42 = [allObjects2 countByEnumeratingWithState:&v80 objects:v93 count:16];
            }

            while (v42);
            v35 = v67;
            v34 = v68;
            v36 = v73;
          }
        }

        else
        {
          allObjects2 = [v75 objectForKeyedSubscript:v37];
          [v32 setObject:allObjects2 forKeyedSubscript:v37];
        }

        ++v36;
      }

      while (v36 != v34);
      v34 = [obj countByEnumeratingWithState:&v84 objects:v94 count:16];
    }

    while (v34);
  }

  allKeys = [v32 allKeys];
  firstObject = [allKeys firstObject];

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  allKeys2 = [v32 allKeys];
  v53 = [allKeys2 countByEnumeratingWithState:&v76 objects:v92 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v77;
    do
    {
      for (k = 0; k != v54; ++k)
      {
        if (*v77 != v55)
        {
          objc_enumerationMutation(allKeys2);
        }

        v57 = *(*(&v76 + 1) + 8 * k);
        v58 = [v32 objectForKeyedSubscript:firstObject];
        unsignedIntValue2 = [v58 unsignedIntValue];

        v60 = [v32 objectForKeyedSubscript:v57];
        unsignedIntValue3 = [v60 unsignedIntValue];

        if (unsignedIntValue2 <= unsignedIntValue3)
        {
          v62 = v57;

          firstObject = v62;
        }
      }

      v54 = [allKeys2 countByEnumeratingWithState:&v76 objects:v92 count:16];
    }

    while (v54);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  if (space)
  {
    CFRelease(space);
  }

  [(CKImageBackgroundColorUtility *)selfCopy setBackgroundColor:firstObject];
}

@end
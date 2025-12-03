@interface CUINamedRecognitionGroup
- (CUINamedRecognitionGroup)initWithName:(id)name contentsFromCatalog:(id)catalog usingRenditionKey:(id)key fromTheme:(unint64_t)theme;
- (id)namedRecognitionItemList;
- (id)recognitionItemsWithName:(id)name;
- (void)dealloc;
@end

@implementation CUINamedRecognitionGroup

- (CUINamedRecognitionGroup)initWithName:(id)name contentsFromCatalog:(id)catalog usingRenditionKey:(id)key fromTheme:(unint64_t)theme
{
  v40.receiver = self;
  v40.super_class = CUINamedRecognitionGroup;
  v8 = [(CUINamedLookup *)&v40 initWithName:name usingRenditionKey:key fromTheme:theme];
  if (v8)
  {
    v9 = [name stringByAppendingString:@"/"];
    contentNames = [(CUIThemeRendition *)[(CUINamedLookup *)v8 _rendition] contentNames];
    if (![contentNames count])
    {
      _CUILog(4, "CoreUI: NamedRecognitionGroup '%@' has no contents", v11, v12, v13, v14, v15, v16, name);

      return 0;
    }

    v8->_imageContents = objc_alloc_init(NSMutableDictionary);
    v8->_objectContents = objc_alloc_init(NSMutableDictionary);
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v17 = [contentNames countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v37;
      do
      {
        v20 = 0;
        do
        {
          if (*v37 != v19)
          {
            objc_enumerationMutation(contentNames);
          }

          v21 = *(*(&v36 + 1) + 8 * v20);
          v22 = [catalog _recognitionImageWithName:v21];
          if (!v22)
          {
            v25 = [catalog _recognitionObjectWithName:v21];
            if (!v25)
            {
              _CUILog(4, "[CUINamedRecognitionGroup initWithName:contentsFromCatalog:usingRenditionKey:fromTheme:] couldn't find any recognitions objects named '%@' skipping", v26, v27, v28, v29, v30, v31, v21);
              goto LABEL_17;
            }

LABEL_14:
            v32 = v25;
            if ([v21 rangeOfString:v9 options:8 range:{0, objc_msgSend(v21, "length")}] != 0x7FFFFFFFFFFFFFFFLL)
            {
              v21 = [v21 substringFromIndex:v33];
            }

            [(NSMutableDictionary *)v8->_objectContents setObject:v32 forKey:v21];
            goto LABEL_17;
          }

          v23 = v22;
          if ([v21 rangeOfString:v9 options:8 range:{0, objc_msgSend(v21, "length")}] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v21 = [v21 substringFromIndex:v24];
          }

          [(NSMutableDictionary *)v8->_imageContents setObject:v23 forKey:v21];
          v25 = [catalog _recognitionObjectWithName:v21];
          if (v25)
          {
            goto LABEL_14;
          }

LABEL_17:
          v20 = v20 + 1;
        }

        while (v18 != v20);
        v34 = [contentNames countByEnumeratingWithState:&v36 objects:v41 count:16];
        v18 = v34;
      }

      while (v34);
    }
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUINamedRecognitionGroup;
  [(CUINamedLookup *)&v3 dealloc];
}

- (id)namedRecognitionItemList
{
  allKeys = [(NSMutableDictionary *)self->_imageContents allKeys];
  allKeys2 = [(NSMutableDictionary *)self->_objectContents allKeys];

  return [allKeys arrayByAddingObjectsFromArray:allKeys2];
}

- (id)recognitionItemsWithName:(id)name
{
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [(CUINamedRecognitionGroup *)self recognitionImageWithName:name];
  if (v6)
  {
    [v5 addObject:v6];
  }

  v7 = [(CUINamedRecognitionGroup *)self recognitionObjectWithName:name];
  if (v7)
  {
    [v5 addObject:v7];
  }

  v8 = [v5 copy];

  return v8;
}

@end
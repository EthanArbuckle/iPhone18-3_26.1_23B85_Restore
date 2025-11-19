@interface CCUIControlCenterPositionProvider
- (CCUIControlCenterPositionProvider)initWithPackingRules:(id)a3;
- (CCUILayoutRect)layoutRectForIdentifier:(SEL)a3;
- (CCUILayoutSize)layoutSize;
- (CCUILayoutSize)maximumLayoutSize;
- (id)_generateRectByIdentifierWithOrderedIdentifiers:(id)a3 orderedSizes:(id)a4 packingOrder:(unint64_t)a5 startPosition:(CCUILayoutPoint)a6 maximumSize:(CCUILayoutSize)a7 outputLayoutSize:(CCUILayoutSize *)a8;
- (void)regenerateRectsWithOrderedIdentifiers:(id)a3 orderedSizes:(id)a4;
@end

@implementation CCUIControlCenterPositionProvider

- (CCUIControlCenterPositionProvider)initWithPackingRules:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CCUIControlCenterPositionProvider;
  v5 = [(CCUIControlCenterPositionProvider *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    packingRules = v5->_packingRules;
    v5->_packingRules = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    rectByIdentifier = v5->_rectByIdentifier;
    v5->_rectByIdentifier = v8;
  }

  return v5;
}

- (CCUILayoutSize)maximumLayoutSize
{
  v2 = [(NSArray *)self->_packingRules lastObject];
  v3 = [v2 sizeLimit];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)regenerateRectsWithOrderedIdentifiers:(id)a3 orderedSizes:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v36 = CCUILayoutSizeZero;
  v30 = [v6 count];
  v31 = self;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = self->_packingRules;
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v29 = *v33;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [v12 packFrom];
        if (v14 == 1)
        {
          v16 = 0;
          v15 = v36;
        }

        else if (v14)
        {
          v16 = 0;
          v15 = 0;
        }

        else
        {
          v15 = 0;
          v16 = *(&v36 + 1);
        }

        v17 = [v12 packingOrder];
        v18 = [v12 sizeLimit];
        v20 = [(CCUIControlCenterPositionProvider *)v31 _generateRectByIdentifierWithOrderedIdentifiers:v6 orderedSizes:v7 packingOrder:v17 startPosition:v15 maximumSize:v16 outputLayoutSize:v18, v19, &v36];
        [(NSDictionary *)v8 addEntriesFromDictionary:v20];
        if ([(NSDictionary *)v8 count]== v30)
        {

          objc_autoreleasePoolPop(v13);
          goto LABEL_18;
        }

        v21 = [v20 count];
        if (v21)
        {
          v22 = v21;
          v23 = [v6 count];
          v24 = v23 - v22;
          v25 = [v6 subarrayWithRange:{v22, v23 - v22}];

          v26 = [v7 subarrayWithRange:{v22, v24}];

          v7 = v26;
          v6 = v25;
        }

        objc_autoreleasePoolPop(v13);
      }

      v10 = [(NSArray *)obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  rectByIdentifier = v31->_rectByIdentifier;
  v31->_rectByIdentifier = v8;

  v31->_layoutSize = v36;
}

- (id)_generateRectByIdentifierWithOrderedIdentifiers:(id)a3 orderedSizes:(id)a4 packingOrder:(unint64_t)a5 startPosition:(CCUILayoutPoint)a6 maximumSize:(CCUILayoutSize)a7 outputLayoutSize:(CCUILayoutSize *)a8
{
  var1 = a6.var1;
  var0 = a6.var0;
  v12 = a3;
  v49 = a4;
  v57 = a5;
  if (a5 == 1)
  {
    v13 = var1;
  }

  else
  {
    v13 = var0;
  }

  v52 = v13;
  if (a5 == 1)
  {
    var1 = var0;
    height = a7.height;
  }

  else
  {
    height = a7.width;
  }

  if (a5 == 1)
  {
    width = a7.width;
  }

  else
  {
    width = a7.height;
  }

  v46 = width;
  v47 = height;
  v48 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = [MEMORY[0x277CBEB38] dictionary];
  if ([v12 count])
  {
    v17 = 0;
    v56 = var1;
    v44 = var1;
    v45 = v12;
    while (2)
    {
      v18 = [v12 objectAtIndex:v17];
      v55 = v17;
      v19 = [v49 objectAtIndex:v17];
      v20 = [v19 ccui_sizeValue];
      if (v57 == 1)
      {
        v22 = v21;
      }

      else
      {
        v22 = v20;
      }

      v53 = v21;
      v54 = v20;
      if (v57 == 1)
      {
        v23 = v20;
      }

      else
      {
        v23 = v21;
      }

      v60 = v22;
      v58 = v18;
      v59 = v47 - v22;
      v50 = v46 - v23;
      v51 = v23;
      v24 = var1;
LABEL_19:
      v61 = v24 + v23;
      v25 = v52;
      do
      {
        if (v25 > v59)
        {
          ++v24;
          v23 = v51;
          if (v24 <= v50)
          {
            goto LABEL_19;
          }

          v12 = v45;
          goto LABEL_53;
        }

        if (v24 >= v61)
        {
          break;
        }

        v26 = v25 + v60;
        v27 = 1;
        v28 = v24;
        do
        {
          if ((v27 & 1) != 0 && v25 < v26)
          {
            v29 = v25 + 1;
            do
            {
              v30 = [MEMORY[0x277CCAE60] ccui_valueWithLayoutPoint:{v25, v24}];
              v31 = [v16 objectForKey:v30];

              if (v31)
              {
                v27 = 0;
              }

              if ((v27 & 1) == 0)
              {
                break;
              }
            }

            while (v29++ < v26);
          }

          if ((v27 & 1) == 0)
          {
            break;
          }

          ++v28;
        }

        while (v28 < v61);
        v25 += (v27 & 1) == 0;
        v18 = v58;
      }

      while ((v27 & 1) == 0);
      if (v57 == 1)
      {
        v33 = v24;
      }

      else
      {
        v33 = v25;
      }

      if (v57 == 1)
      {
        v34 = v25;
      }

      else
      {
        v34 = v24;
      }

      v62[0] = v33;
      v62[1] = v34;
      v62[2] = v54;
      v62[3] = v53;
      v35 = [MEMORY[0x277CCAE60] ccui_valueWithLayoutRect:v62];
      [v48 setObject:v35 forKey:v18];
      v36 = v56;
      if (v56 <= v61)
      {
        v36 = v61;
      }

      v56 = v36;
      if (v24 < v61)
      {
        do
        {
          if (v25 < v25 + v60)
          {
            v37 = v60;
            v38 = v25;
            do
            {
              v39 = [MEMORY[0x277CCAE60] ccui_valueWithLayoutPoint:{v38, v24}];
              [v16 setObject:v18 forKey:v39];

              ++v38;
              --v37;
            }

            while (v37);
          }

          ++v24;
        }

        while (v24 != v61);
      }

      v17 = v55 + 1;
      v12 = v45;
      var1 = v44;
      if (v55 + 1 < [v45 count])
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v56 = var1;
  }

LABEL_53:
  if (a8)
  {
    v41 = a7.height;
    v40 = a7.width;
    if (v57 == 1)
    {
      v40 = v56;
    }

    else
    {
      v41 = v56;
    }

    if (a8->width > v40)
    {
      v40 = a8->width;
    }

    if (a8->height > v41)
    {
      v41 = a8->height;
    }

    a8->width = v40;
    a8->height = v41;
  }

  v42 = [v48 copy];

  return v42;
}

- (CCUILayoutRect)layoutRectForIdentifier:(SEL)a3
{
  v5 = [(NSDictionary *)self->_rectByIdentifier objectForKey:a4];
  if (v5)
  {
    v7 = v5;
    [v5 ccui_rectValue];
    v5 = v7;
  }

  else
  {
    retstr->var0 = 0u;
    retstr->var1 = 0u;
  }

  return result;
}

- (CCUILayoutSize)layoutSize
{
  height = self->_layoutSize.height;
  width = self->_layoutSize.width;
  result.height = height;
  result.width = width;
  return result;
}

@end
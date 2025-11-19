@interface IFIconSpecification
+ (id)iosAppIconSpecification;
+ (id)iosDocumentGlyphSpecification;
+ (id)iosDocumentIconSpecification;
+ (id)iosMessagesAppIconSpecification;
+ (id)macosDocumentIconSpecification;
+ (id)macosIconSpecification;
+ (id)macosTemplateIconSpecification;
+ (id)rOSAppIconSpecification;
+ (id)tvAppIconSpecification;
+ (id)watchAppIconSpecification;
- (CGSize)maxSize;
- (CGSize)minSize;
- (IFIconSpecification)init;
- (NSArray)allImageSpecifications;
- (NSArray)allVariants;
- (id)_initWithName:(id)a3 imageSpecifiactions:(id)a4 variants:(id)a5;
- (id)imageSpecificationForSize:(CGSize)a3 scale:(double)a4;
- (id)imageSpecificationsMatchingPredicate:(id)a3;
- (id)imageSpecificationsWithTags:(id)a3 withoutTags:(id)a4;
@end

@implementation IFIconSpecification

- (CGSize)maxSize
{
  objc_copyStruct(v4, &self->_maxSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)iosAppIconSpecification
{
  if (iosAppIconSpecification_onceToken != -1)
  {
    +[IFIconSpecification(Constructors) iosAppIconSpecification];
  }

  v3 = iosAppIconSpecification_iconSpecification;

  return v3;
}

void __60__IFIconSpecification_Constructors__iosAppIconSpecification__block_invoke()
{
  v139[36] = *MEMORY[0x1E69E9840];
  v0 = [IFImageSpecification alloc];
  v138 = @"IFImageSpecificationTagOptional";
  v106 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v138 count:1];
  v105 = [(IFImageSpecification *)v0 initWithSize:v106 scale:20.0 tags:20.0, 1.0];
  v139[0] = v105;
  v1 = [IFImageSpecification alloc];
  v137 = @"IFImageSpecificationTagOptional";
  v104 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v137 count:1];
  v103 = [(IFImageSpecification *)v1 initWithSize:v104 scale:29.0 tags:29.0, 1.0];
  v139[1] = v103;
  v2 = [IFImageSpecification alloc];
  v136 = @"IFImageSpecificationTagOptional";
  v102 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v136 count:1];
  v101 = [(IFImageSpecification *)v2 initWithSize:v102 scale:40.0 tags:40.0, 1.0];
  v139[2] = v101;
  v3 = [IFImageSpecification alloc];
  v4 = MEMORY[0x1E695E0F0];
  v100 = [(IFImageSpecification *)v3 initWithSize:MEMORY[0x1E695E0F0] scale:56.0 tags:56.0, 1.0];
  v139[3] = v100;
  v5 = [IFImageSpecification alloc];
  v135[0] = @"IFImageSpecificationTagHomeScreen";
  v135[1] = @"IFImageSpecificationTagOptional";
  v99 = [MEMORY[0x1E695DEC8] arrayWithObjects:v135 count:2];
  v98 = [(IFImageSpecification *)v5 initWithSize:v99 scale:60.0 tags:60.0, 1.0];
  v139[4] = v98;
  v6 = [IFImageSpecification alloc];
  v134[0] = @"IFImageSpecificationTagHomeScreen";
  v134[1] = @"IFImageSpecificationTagRecomended";
  v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:v134 count:2];
  v96 = [(IFImageSpecification *)v6 initWithSize:v97 scale:64.0 tags:64.0, 1.0];
  v139[5] = v96;
  v7 = [IFImageSpecification alloc];
  v133[0] = @"IFImageSpecificationTagHomeScreen";
  v133[1] = @"IFImageSpecificationTagRecomended";
  v95 = [MEMORY[0x1E695DEC8] arrayWithObjects:v133 count:2];
  v94 = [(IFImageSpecification *)v7 initWithSize:v95 scale:68.0 tags:68.0, 1.0];
  v139[6] = v94;
  v93 = [[IFImageSpecification alloc] initWithSize:v4 scale:72.0 tags:72.0, 1.0];
  v139[7] = v93;
  v8 = [IFImageSpecification alloc];
  v132[0] = @"IFImageSpecificationTagHomeScreen";
  v132[1] = @"IFImageSpecificationTagOptional";
  v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:2];
  v91 = [(IFImageSpecification *)v8 initWithSize:v92 scale:76.0 tags:76.0, 1.0];
  v139[8] = v91;
  v90 = [[IFImageSpecification alloc] initWithSize:v4 scale:80.0 tags:80.0, 1.0];
  v139[9] = v90;
  v9 = [IFImageSpecification alloc];
  v131[0] = @"IFImageSpecificationTagAppStore";
  v131[1] = @"IFImageSpecificationTagRequired";
  v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:v131 count:2];
  v88 = [(IFImageSpecification *)v9 initWithSize:v89 scale:1024.0 tags:1024.0, 1.0];
  v139[10] = v88;
  v10 = [IFImageSpecification alloc];
  v130 = @"IFImageSpecificationTagRecomended";
  v87 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v130 count:1];
  v86 = [(IFImageSpecification *)v10 initWithSize:v87 scale:20.0 tags:20.0, 2.0];
  v139[11] = v86;
  v11 = [IFImageSpecification alloc];
  v129 = @"IFImageSpecificationTagOptional";
  v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v129 count:1];
  v84 = [(IFImageSpecification *)v11 initWithSize:v85 scale:29.0 tags:29.0, 2.0];
  v139[12] = v84;
  v12 = [IFImageSpecification alloc];
  v128 = @"IFImageSpecificationTagOptional";
  v83 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v128 count:1];
  v82 = [(IFImageSpecification *)v12 initWithSize:v83 scale:38.0 tags:38.0, 2.0];
  v139[13] = v82;
  v13 = [IFImageSpecification alloc];
  v127 = @"IFImageSpecificationTagRecomended";
  v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v127 count:1];
  v80 = [(IFImageSpecification *)v13 initWithSize:v81 scale:40.0 tags:40.0, 2.0];
  v139[14] = v80;
  v79 = [[IFImageSpecification alloc] initWithSize:v4 scale:56.0 tags:56.0, 2.0];
  v139[15] = v79;
  v14 = [IFImageSpecification alloc];
  v126[0] = @"IFImageSpecificationTagHomeScreen";
  v126[1] = @"IFImageSpecificationTagRecomended";
  v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:2];
  v77 = [(IFImageSpecification *)v14 initWithSize:v78 scale:60.0 tags:60.0, 2.0];
  v139[16] = v77;
  v15 = [IFImageSpecification alloc];
  v125[0] = @"IFImageSpecificationTagHomeScreen";
  v125[1] = @"IFImageSpecificationTagRecomended";
  v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:2];
  v75 = [(IFImageSpecification *)v15 initWithSize:v76 scale:64.0 tags:64.0, 2.0];
  v139[17] = v75;
  v16 = [IFImageSpecification alloc];
  v124 = @"IFImageSpecificationTagHomeScreen";
  v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v124 count:1];
  v73 = [(IFImageSpecification *)v16 initWithSize:v74 scale:68.0 tags:68.0, 2.0];
  v139[18] = v73;
  v72 = [[IFImageSpecification alloc] initWithSize:v4 scale:72.0 tags:72.0, 1.0];
  v139[19] = v72;
  v17 = [IFImageSpecification alloc];
  v123[0] = @"IFImageSpecificationTagHomeScreen";
  v123[1] = @"IFImageSpecificationTagRecomended";
  v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v123 count:2];
  v70 = [(IFImageSpecification *)v17 initWithSize:v71 scale:76.0 tags:76.0, 2.0];
  v139[20] = v70;
  v69 = [[IFImageSpecification alloc] initWithSize:v4 scale:80.0 tags:80.0, 2.0];
  v139[21] = v69;
  v18 = [IFImageSpecification alloc];
  v122[0] = @"IFImageSpecificationTagHomeScreen";
  v122[1] = @"IFImageSpecificationTagRecomended";
  v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v122 count:2];
  v67 = [(IFImageSpecification *)v18 initWithSize:v68 scale:83.5 tags:83.5, 2.0];
  v139[22] = v67;
  v19 = [IFImageSpecification alloc];
  v121 = @"IFImageSpecificationTagOptional";
  v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v121 count:1];
  v65 = [(IFImageSpecification *)v19 initWithSize:v66 scale:176.0 tags:176.0, 2.0];
  v139[23] = v65;
  v20 = [IFImageSpecification alloc];
  v120 = @"IFImageSpecificationTagRecomended";
  v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v120 count:1];
  v63 = [(IFImageSpecification *)v20 initWithSize:v64 scale:20.0 tags:20.0, 3.0];
  v139[24] = v63;
  v21 = [IFImageSpecification alloc];
  v119 = @"IFImageSpecificationTagOptional";
  v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v119 count:1];
  v61 = [(IFImageSpecification *)v21 initWithSize:v62 scale:29.0 tags:29.0, 3.0];
  v139[25] = v61;
  v22 = [IFImageSpecification alloc];
  v118 = @"IFImageSpecificationTagOptional";
  v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v118 count:1];
  v59 = [(IFImageSpecification *)v22 initWithSize:v60 scale:38.0 tags:38.0, 3.0];
  v139[26] = v59;
  v23 = [IFImageSpecification alloc];
  v117 = @"IFImageSpecificationTagRecomended";
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v117 count:1];
  v57 = [(IFImageSpecification *)v23 initWithSize:v58 scale:40.0 tags:40.0, 3.0];
  v139[27] = v57;
  v56 = [[IFImageSpecification alloc] initWithSize:v4 scale:56.0 tags:56.0, 2.0];
  v139[28] = v56;
  v24 = [IFImageSpecification alloc];
  v116[0] = @"IFImageSpecificationTagHomeScreen";
  v116[1] = @"IFImageSpecificationTagRecomended";
  v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:2];
  v54 = [(IFImageSpecification *)v24 initWithSize:v55 scale:60.0 tags:60.0, 3.0];
  v139[29] = v54;
  v25 = [IFImageSpecification alloc];
  v115[0] = @"IFImageSpecificationTagHomeScreen";
  v115[1] = @"IFImageSpecificationTagRecomended";
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:2];
  v27 = [(IFImageSpecification *)v25 initWithSize:v26 scale:64.0 tags:64.0, 3.0];
  v139[30] = v27;
  v28 = [IFImageSpecification alloc];
  v114 = @"IFImageSpecificationTagHomeScreen";
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v114 count:1];
  v30 = [(IFImageSpecification *)v28 initWithSize:v29 scale:68.0 tags:68.0, 3.0];
  v139[31] = v30;
  v31 = v4;
  v32 = [[IFImageSpecification alloc] initWithSize:v4 scale:72.0 tags:72.0, 1.0];
  v139[32] = v32;
  v33 = [[IFImageSpecification alloc] initWithSize:v31 scale:76.0 tags:76.0, 3.0];
  v139[33] = v33;
  v34 = [[IFImageSpecification alloc] initWithSize:v31 scale:80.0 tags:80.0, 3.0];
  v139[34] = v34;
  v35 = [IFImageSpecification alloc];
  v113 = @"IFImageSpecificationTagOptional";
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v113 count:1];
  v37 = [(IFImageSpecification *)v35 initWithSize:v36 scale:176.0 tags:176.0, 3.0];
  v139[35] = v37;
  v107 = [MEMORY[0x1E695DEC8] arrayWithObjects:v139 count:36];

  v38 = [IFImageSpecification alloc];
  v111 = @"IFImageSpecificationTagOptional";
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v111 count:1];
  v40 = [(IFImageSpecification *)v38 initWithSize:v39 scale:60.0 tags:60.0, 1.0];
  v112[0] = v40;
  v41 = [IFImageSpecification alloc];
  v110 = @"IFImageSpecificationTagRecomended";
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v110 count:1];
  v43 = [(IFImageSpecification *)v41 initWithSize:v42 scale:60.0 tags:60.0, 2.0];
  v112[1] = v43;
  v44 = [IFImageSpecification alloc];
  v109 = @"IFImageSpecificationTagRequired";
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v109 count:1];
  v46 = [(IFImageSpecification *)v44 initWithSize:v45 scale:60.0 tags:60.0, 3.0];
  v112[2] = v46;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:3];

  v48 = [ISVariantIconSpecification alloc];
  v49 = [(IFIconSpecification *)v48 _initWithName:@"Template Icon" imageSpecifiactions:v47 variants:MEMORY[0x1E695E0F0]];

  v50 = [IFIconSpecification alloc];
  v108 = v49;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:1];
  v52 = [(IFIconSpecification *)v50 _initWithName:@"Application Icon" imageSpecifiactions:v107 variants:v51];
  v53 = iosAppIconSpecification_iconSpecification;
  iosAppIconSpecification_iconSpecification = v52;
}

- (IFIconSpecification)init
{
  v11.receiver = self;
  v11.super_class = IFIconSpecification;
  v2 = [(IFIconSpecification *)&v11 init];
  v3 = v2;
  if (v2)
  {
    imageSpecifications = v2->_imageSpecifications;
    v2->_imageSpecifications = MEMORY[0x1E695E0F0];

    v3->_maxSize = 0u;
    v3->_minSize = 0u;
    __asm { FMOV            V0.2D, #1.0 }

    *&v3->_maxScale = _Q0;
  }

  return v3;
}

- (id)_initWithName:(id)a3 imageSpecifiactions:(id)a4 variants:(id)a5
{
  v84 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v82.receiver = self;
  v82.super_class = IFIconSpecification;
  v11 = [(IFIconSpecification *)&v82 init];
  if (v11)
  {
    v12 = [v8 copy];
    name = v11->_name;
    v11->_name = v12;

    v14 = [v9 sortedArrayUsingComparator:&__block_literal_global_1];
    imageSpecifications = v11->_imageSpecifications;
    v11->_imageSpecifications = v14;

    v16 = objc_opt_new();
    if ([(NSArray *)v11->_imageSpecifications count])
    {
      v17 = 0;
      do
      {
        v18 = [(NSArray *)v11->_imageSpecifications objectAtIndexedSubscript:v17];
        if (v17)
        {
          v19 = [(NSArray *)v11->_imageSpecifications objectAtIndexedSubscript:v17 - 1];
        }

        else
        {
          v19 = 0;
        }

        if (++v17 >= [(NSArray *)v11->_imageSpecifications count])
        {
          v20 = 0;
        }

        else
        {
          v20 = [(NSArray *)v11->_imageSpecifications objectAtIndexedSubscript:v17];
        }

        [v18 setSmallerSpecification:v19];
        [v19 setLargerSpecification:v18];
        [v18 setLargerSpecification:v20];
        [v20 setSmallerSpecification:v18];
        [v18 scale];
        v22 = v21;
        [v19 scale];
        if (v22 != v23 || ([v18 scale], v25 = v24, objc_msgSend(v20, "scale"), v25 != v26))
        {
          [v16 addObject:v18];
        }
      }

      while (v17 < [(NSArray *)v11->_imageSpecifications count]);
    }

    v76 = v9;
    v77 = v8;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v27 = v16;
    v28 = [v27 countByEnumeratingWithState:&v78 objects:v83 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v79;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v79 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v78 + 1) + 8 * i);
          v33 = [v32 smallerSpecification];
          v34 = [v32 largerSpecification];
          [v32 scale];
          v36 = v35;
          [v33 scale];
          if (v36 != v37)
          {
            if (v33)
            {
              do
              {
                [v33 scale];
                v39 = v38;
                [v32 scale];
                if (v39 == v40)
                {
                  break;
                }

                [v33 dimension];
                v42 = v41;
                [v33 scale];
                v44 = v42 * v43;
                [v32 dimension];
                v46 = v45;
                [v32 scale];
                if (v44 < v46 * v47)
                {
                  break;
                }

                v48 = [v33 smallerSpecification];

                v33 = v48;
              }

              while (v48);
            }

            [v32 setSmallerSpecification:v33];
          }

          [v32 scale];
          v50 = v49;
          [v34 scale];
          if (v50 != v51)
          {
            if (v34)
            {
              do
              {
                [v34 scale];
                v53 = v52;
                [v32 scale];
                if (v53 == v54)
                {
                  break;
                }

                [v34 dimension];
                v56 = v55;
                [v34 scale];
                v58 = v56 * v57;
                [v32 dimension];
                v60 = v59;
                [v32 scale];
                if (v58 > v60 * v61)
                {
                  break;
                }

                v62 = [v34 largerSpecification];

                v34 = v62;
              }

              while (v62);
            }

            [v32 setLargerSpecification:v34];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v78 objects:v83 count:16];
      }

      while (v29);
    }

    v63 = [(NSArray *)v11->_imageSpecifications lastObject];
    [v63 size];
    v11->_maxSize.width = v64;
    v11->_maxSize.height = v65;

    v66 = [(NSArray *)v11->_imageSpecifications firstObject];
    [v66 size];
    v11->_minSize.width = v67;
    v11->_minSize.height = v68;

    v69 = [(NSArray *)v11->_imageSpecifications lastObject];
    [v69 scale];
    v11->_maxScale = v70;

    v71 = [(NSArray *)v11->_imageSpecifications firstObject];
    [v71 scale];
    v11->_minScale = v72;

    v73 = [v10 copy];
    variants = v11->_variants;
    v11->_variants = v73;

    v9 = v76;
    v8 = v77;
  }

  return v11;
}

uint64_t __66__IFIconSpecification__initWithName_imageSpecifiactions_variants___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 scale];
  v7 = v6;
  [v5 scale];
  if (v7 >= v8)
  {
    [v4 scale];
    v11 = v10;
    [v5 scale];
    if (v11 > v12)
    {
      v9 = 1;
      goto LABEL_7;
    }

    [v4 dimension];
    v14 = v13;
    [v5 dimension];
    if (v14 >= v15)
    {
      [v4 dimension];
      v17 = v16;
      [v5 dimension];
      v9 = v17 > v18;
      goto LABEL_7;
    }
  }

  v9 = -1;
LABEL_7:

  return v9;
}

- (id)imageSpecificationForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v29 = *MEMORY[0x1E69E9840];
  v8 = [(NSArray *)self->_imageSpecifications lastObject];
  [v8 scale];
  v10 = v9;

  if (v10 >= a4)
  {
    v10 = a4;
  }

  if (width >= height)
  {
    height = width;
  }

  v11 = [(NSArray *)self->_imageSpecifications firstObject];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = self->_imageSpecifications;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
LABEL_7:
    v16 = 0;
    while (1)
    {
      if (*v25 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v24 + 1) + 8 * v16);
      [v17 scale];
      if (v18 >= v10)
      {
        [v17 size];
        v20 = v19;
        [v17 size];
        if (v20 < v21)
        {
          v20 = v21;
        }

        v22 = v17;

        v11 = v22;
        if (v20 >= height)
        {
          break;
        }
      }

      if (v14 == ++v16)
      {
        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
        v22 = v11;
        if (v14)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  else
  {
    v22 = v11;
  }

  return v22;
}

- (NSArray)allImageSpecifications
{
  v2 = [(NSArray *)self->_imageSpecifications copy];

  return v2;
}

- (NSArray)allVariants
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(IFIconSpecification *)self variants];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        [v3 addObject:v9];
        v10 = [v9 allVariants];
        [v3 addObjectsFromArray:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];

  return v11;
}

- (id)imageSpecificationsMatchingPredicate:(id)a3
{
  v4 = a3;
  v5 = [(IFIconSpecification *)self allImageSpecifications];
  v6 = [v5 filteredArrayUsingPredicate:v4];

  return v6;
}

- (id)imageSpecificationsWithTags:(id)a3 withoutTags:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 containsObject:@"IFImageSpecificationTagAll"];
  v9 = [MEMORY[0x1E695DF70] arrayWithArray:v6];

  [v9 addObject:@"IFImageSpecificationTagInternal"];
  if (v8)
  {
    v10 = [v7 containsObject:@"IFImageSpecificationTagPrivate"];

    if ((v10 & 1) == 0)
    {
      [v9 addObject:@"IFImageSpecificationTagPrivate"];
    }

    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(tags, $tag, $tag IN %@).@count == 0", v9];
  }

  else
  {
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(tags, $tag, $tag IN %@).@count > 0 && SUBQUERY(tags, $tag, $tag IN %@).@count == 0", v7, v9];
  }

  v12 = [(IFIconSpecification *)self imageSpecificationsMatchingPredicate:v11];

  return v12;
}

- (CGSize)minSize
{
  objc_copyStruct(v4, &self->_minSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)macosIconSpecification
{
  if (macosIconSpecification_onceToken != -1)
  {
    +[IFIconSpecification(Constructors) macosIconSpecification];
  }

  v3 = macosIconSpecification_iconSpecification;

  return v3;
}

void __59__IFIconSpecification_Constructors__macosIconSpecification__block_invoke()
{
  v98[14] = *MEMORY[0x1E69E9840];
  v0 = [IFImageSpecification alloc];
  v97 = @"IFImageSpecificationTagRequired";
  v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v97 count:1];
  v70 = [(IFImageSpecification *)v0 initWithSize:v72 scale:16.0 tags:16.0, 1.0];
  v98[0] = v70;
  v1 = [IFImageSpecification alloc];
  v96[0] = @"IFImageSpecificationTagOptional";
  v96[1] = @"IFImageSpecificationTagInternal";
  v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:2];
  v66 = [(IFImageSpecification *)v1 initWithSize:v68 scale:18.0 tags:18.0, 1.0];
  v98[1] = v66;
  v2 = [IFImageSpecification alloc];
  v95[0] = @"IFImageSpecificationTagOptional";
  v95[1] = @"IFImageSpecificationTagInternal";
  v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:2];
  v61 = [(IFImageSpecification *)v2 initWithSize:v63 scale:24.0 tags:24.0, 1.0];
  v98[2] = v61;
  v3 = [IFImageSpecification alloc];
  v94 = @"IFImageSpecificationTagRequired";
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v94 count:1];
  v57 = [(IFImageSpecification *)v3 initWithSize:v59 scale:32.0 tags:32.0, 1.0];
  v98[3] = v57;
  v4 = [IFImageSpecification alloc];
  v93 = @"IFImageSpecificationTagRecomended";
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v93 count:1];
  v55 = [(IFImageSpecification *)v4 initWithSize:v56 scale:128.0 tags:128.0, 1.0];
  v98[4] = v55;
  v5 = [IFImageSpecification alloc];
  v92 = @"IFImageSpecificationTagOptional";
  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v92 count:1];
  v53 = [(IFImageSpecification *)v5 initWithSize:v54 scale:256.0 tags:256.0, 1.0];
  v98[5] = v53;
  v6 = [IFImageSpecification alloc];
  v91 = @"IFImageSpecificationTagRequired";
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v91 count:1];
  v51 = [(IFImageSpecification *)v6 initWithSize:v52 scale:512.0 tags:512.0, 1.0];
  v98[6] = v51;
  v7 = [IFImageSpecification alloc];
  v90 = @"IFImageSpecificationTagRequired";
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v90 count:1];
  v49 = [(IFImageSpecification *)v7 initWithSize:v50 scale:16.0 tags:16.0, 2.0];
  v98[7] = v49;
  v8 = [IFImageSpecification alloc];
  v89[0] = @"IFImageSpecificationTagOptional";
  v89[1] = @"IFImageSpecificationTagInternal";
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:2];
  v47 = [(IFImageSpecification *)v8 initWithSize:v48 scale:18.0 tags:18.0, 2.0];
  v98[8] = v47;
  v9 = [IFImageSpecification alloc];
  v88[0] = @"IFImageSpecificationTagOptional";
  v88[1] = @"IFImageSpecificationTagInternal";
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:2];
  v45 = [(IFImageSpecification *)v9 initWithSize:v46 scale:24.0 tags:24.0, 2.0];
  v98[9] = v45;
  v10 = [IFImageSpecification alloc];
  v87 = @"IFImageSpecificationTagRequired";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v87 count:1];
  v12 = [(IFImageSpecification *)v10 initWithSize:v11 scale:32.0 tags:32.0, 2.0];
  v98[10] = v12;
  v13 = [IFImageSpecification alloc];
  v86 = @"IFImageSpecificationTagRecomended";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v86 count:1];
  v15 = [(IFImageSpecification *)v13 initWithSize:v14 scale:128.0 tags:128.0, 2.0];
  v98[11] = v15;
  v16 = [IFImageSpecification alloc];
  v85 = @"IFImageSpecificationTagOptional";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
  v18 = [(IFImageSpecification *)v16 initWithSize:v17 scale:256.0 tags:256.0, 2.0];
  v98[12] = v18;
  v19 = [IFImageSpecification alloc];
  v84[0] = @"IFImageSpecificationTagRequired";
  v84[1] = @"IFImageSpecificationTagAppStore";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:2];
  v21 = [(IFImageSpecification *)v19 initWithSize:v20 scale:512.0 tags:512.0, 2.0];
  v98[13] = v21;
  v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:14];

  v22 = [IFImageSpecification alloc];
  v82 = @"IFImageSpecificationTagRequired";
  v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
  v71 = [(IFImageSpecification *)v22 initWithSize:v73 scale:16.0 tags:16.0, 1.0];
  v83[0] = v71;
  v23 = [IFImageSpecification alloc];
  v81 = @"IFImageSpecificationTagRequired";
  v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
  v67 = [(IFImageSpecification *)v23 initWithSize:v69 scale:18.0 tags:18.0, 1.0];
  v83[1] = v67;
  v24 = [IFImageSpecification alloc];
  v80 = @"IFImageSpecificationTagRequired";
  v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
  v62 = [(IFImageSpecification *)v24 initWithSize:v64 scale:24.0 tags:24.0, 1.0];
  v83[2] = v62;
  v25 = [IFImageSpecification alloc];
  v79 = @"IFImageSpecificationTagOptional";
  v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:1];
  v58 = [(IFImageSpecification *)v25 initWithSize:v60 scale:32.0 tags:32.0, 1.0];
  v83[3] = v58;
  v26 = [IFImageSpecification alloc];
  v78 = @"IFImageSpecificationTagRequired";
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];
  v28 = [(IFImageSpecification *)v26 initWithSize:v27 scale:16.0 tags:16.0, 2.0];
  v83[4] = v28;
  v29 = [IFImageSpecification alloc];
  v77 = @"IFImageSpecificationTagRequired";
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
  v31 = [(IFImageSpecification *)v29 initWithSize:v30 scale:18.0 tags:18.0, 2.0];
  v83[5] = v31;
  v32 = [IFImageSpecification alloc];
  v76 = @"IFImageSpecificationTagRequired";
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
  v34 = [(IFImageSpecification *)v32 initWithSize:v33 scale:24.0 tags:24.0, 2.0];
  v83[6] = v34;
  v35 = [IFImageSpecification alloc];
  v75 = @"IFImageSpecificationTagOptional";
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
  v37 = [(IFImageSpecification *)v35 initWithSize:v36 scale:32.0 tags:32.0, 2.0];
  v83[7] = v37;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:8];

  v39 = [ISVariantIconSpecification alloc];
  v40 = [(IFIconSpecification *)v39 _initWithName:@"Template Icon" imageSpecifiactions:v38 variants:MEMORY[0x1E695E0F0]];

  v41 = [IFIconSpecification alloc];
  v74 = v40;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
  v43 = [(IFIconSpecification *)v41 _initWithName:@"Application Icon" imageSpecifiactions:v65 variants:v42];
  v44 = macosIconSpecification_iconSpecification;
  macosIconSpecification_iconSpecification = v43;
}

+ (id)macosDocumentIconSpecification
{
  if (macosDocumentIconSpecification_onceToken != -1)
  {
    +[IFIconSpecification(Constructors) macosDocumentIconSpecification];
  }

  v3 = macosDocumentIconSpecification_iconSpecification;

  return v3;
}

void __67__IFIconSpecification_Constructors__macosDocumentIconSpecification__block_invoke()
{
  v82[10] = *MEMORY[0x1E69E9840];
  v0 = [IFImageSpecification alloc];
  v81 = @"IFImageSpecificationTagRequired";
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
  v57 = [(IFImageSpecification *)v0 initWithSize:v59 scale:16.0 tags:16.0, 1.0];
  v82[0] = v57;
  v1 = [IFImageSpecification alloc];
  v80 = @"IFImageSpecificationTagRequired";
  v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
  v53 = [(IFImageSpecification *)v1 initWithSize:v55 scale:32.0 tags:32.0, 1.0];
  v82[1] = v53;
  v2 = [IFImageSpecification alloc];
  v79 = @"IFImageSpecificationTagOptional";
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:1];
  v49 = [(IFImageSpecification *)v2 initWithSize:v51 scale:128.0 tags:128.0, 1.0];
  v82[2] = v49;
  v3 = [IFImageSpecification alloc];
  v78 = @"IFImageSpecificationTagOptional";
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];
  v45 = [(IFImageSpecification *)v3 initWithSize:v47 scale:256.0 tags:256.0, 1.0];
  v82[3] = v45;
  v4 = [IFImageSpecification alloc];
  v77 = @"IFImageSpecificationTagOptional";
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
  v43 = [(IFImageSpecification *)v4 initWithSize:v44 scale:512.0 tags:512.0, 1.0];
  v82[4] = v43;
  v5 = [IFImageSpecification alloc];
  v76 = @"IFImageSpecificationTagRequired";
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
  v6 = [(IFImageSpecification *)v5 initWithSize:v42 scale:16.0 tags:16.0, 2.0];
  v82[5] = v6;
  v7 = [IFImageSpecification alloc];
  v75 = @"IFImageSpecificationTagRequired";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
  v9 = [(IFImageSpecification *)v7 initWithSize:v8 scale:32.0 tags:32.0, 2.0];
  v82[6] = v9;
  v10 = [IFImageSpecification alloc];
  v74 = @"IFImageSpecificationTagRecomended";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
  v12 = [(IFImageSpecification *)v10 initWithSize:v11 scale:128.0 tags:128.0, 2.0];
  v82[7] = v12;
  v13 = [IFImageSpecification alloc];
  v73 = @"IFImageSpecificationTagOptional";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
  v15 = [(IFImageSpecification *)v13 initWithSize:v14 scale:256.0 tags:256.0, 2.0];
  v82[8] = v15;
  v16 = [IFImageSpecification alloc];
  v72 = @"IFImageSpecificationTagRequired";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
  v18 = [(IFImageSpecification *)v16 initWithSize:v17 scale:512.0 tags:512.0, 2.0];
  v82[9] = v18;
  v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:10];

  v19 = [IFImageSpecification alloc];
  v70 = @"IFImageSpecificationTagRequired";
  v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
  v58 = [(IFImageSpecification *)v19 initWithSize:v60 scale:16.0 tags:16.0, 1.0];
  v71[0] = v58;
  v20 = [IFImageSpecification alloc];
  v69 = @"IFImageSpecificationTagRequired";
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];
  v54 = [(IFImageSpecification *)v20 initWithSize:v56 scale:18.0 tags:18.0, 1.0];
  v71[1] = v54;
  v21 = [IFImageSpecification alloc];
  v68 = @"IFImageSpecificationTagRequired";
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
  v50 = [(IFImageSpecification *)v21 initWithSize:v52 scale:24.0 tags:24.0, 1.0];
  v71[2] = v50;
  v22 = [IFImageSpecification alloc];
  v67 = @"IFImageSpecificationTagOptional";
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
  v46 = [(IFImageSpecification *)v22 initWithSize:v48 scale:32.0 tags:32.0, 1.0];
  v71[3] = v46;
  v23 = [IFImageSpecification alloc];
  v66 = @"IFImageSpecificationTagRequired";
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
  v25 = [(IFImageSpecification *)v23 initWithSize:v24 scale:16.0 tags:16.0, 2.0];
  v71[4] = v25;
  v26 = [IFImageSpecification alloc];
  v65 = @"IFImageSpecificationTagRequired";
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
  v28 = [(IFImageSpecification *)v26 initWithSize:v27 scale:18.0 tags:18.0, 2.0];
  v71[5] = v28;
  v29 = [IFImageSpecification alloc];
  v64 = @"IFImageSpecificationTagRequired";
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
  v31 = [(IFImageSpecification *)v29 initWithSize:v30 scale:24.0 tags:24.0, 2.0];
  v71[6] = v31;
  v32 = [IFImageSpecification alloc];
  v63 = @"IFImageSpecificationTagOptional";
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
  v34 = [(IFImageSpecification *)v32 initWithSize:v33 scale:32.0 tags:32.0, 2.0];
  v71[7] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:8];

  v36 = [ISVariantIconSpecification alloc];
  v37 = [(IFIconSpecification *)v36 _initWithName:@"Template Icon" imageSpecifiactions:v35 variants:MEMORY[0x1E695E0F0]];

  v38 = [IFIconSpecification alloc];
  v62 = v37;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
  v40 = [(IFIconSpecification *)v38 _initWithName:@"Document Icon" imageSpecifiactions:v61 variants:v39];
  v41 = macosDocumentIconSpecification_iconSpecification;
  macosDocumentIconSpecification_iconSpecification = v40;
}

+ (id)macosTemplateIconSpecification
{
  if (macosTemplateIconSpecification_onceToken != -1)
  {
    +[IFIconSpecification(Constructors) macosTemplateIconSpecification];
  }

  v3 = macosTemplateIconSpecification_iconSpecification;

  return v3;
}

void __67__IFIconSpecification_Constructors__macosTemplateIconSpecification__block_invoke()
{
  v36[8] = *MEMORY[0x1E69E9840];
  v0 = [IFImageSpecification alloc];
  v35 = @"IFImageSpecificationTagRequired";
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v26 = [(IFImageSpecification *)v0 initWithSize:v27 scale:16.0 tags:16.0, 1.0];
  v36[0] = v26;
  v1 = [IFImageSpecification alloc];
  v34 = @"IFImageSpecificationTagRequired";
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v24 = [(IFImageSpecification *)v1 initWithSize:v25 scale:18.0 tags:18.0, 1.0];
  v36[1] = v24;
  v2 = [IFImageSpecification alloc];
  v33 = @"IFImageSpecificationTagRequired";
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  v22 = [(IFImageSpecification *)v2 initWithSize:v23 scale:24.0 tags:24.0, 1.0];
  v36[2] = v22;
  v3 = [IFImageSpecification alloc];
  v32 = @"IFImageSpecificationTagOptional";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v20 = [(IFImageSpecification *)v3 initWithSize:v21 scale:32.0 tags:32.0, 1.0];
  v36[3] = v20;
  v4 = [IFImageSpecification alloc];
  v31 = @"IFImageSpecificationTagRequired";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v6 = [(IFImageSpecification *)v4 initWithSize:v5 scale:16.0 tags:16.0, 2.0];
  v36[4] = v6;
  v7 = [IFImageSpecification alloc];
  v30 = @"IFImageSpecificationTagRequired";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  v9 = [(IFImageSpecification *)v7 initWithSize:v8 scale:18.0 tags:18.0, 2.0];
  v36[5] = v9;
  v10 = [IFImageSpecification alloc];
  v29 = @"IFImageSpecificationTagRequired";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  v12 = [(IFImageSpecification *)v10 initWithSize:v11 scale:24.0 tags:24.0, 2.0];
  v36[6] = v12;
  v13 = [IFImageSpecification alloc];
  v28 = @"IFImageSpecificationTagOptional";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  v15 = [(IFImageSpecification *)v13 initWithSize:v14 scale:32.0 tags:32.0, 2.0];
  v36[7] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:8];

  v17 = [IFIconSpecification alloc];
  v18 = [(IFIconSpecification *)v17 _initWithName:@"Template Icon" imageSpecifiactions:v16 variants:MEMORY[0x1E695E0F0]];
  v19 = macosTemplateIconSpecification_iconSpecification;
  macosTemplateIconSpecification_iconSpecification = v18;
}

+ (id)iosDocumentGlyphSpecification
{
  if (iosDocumentGlyphSpecification_onceToken != -1)
  {
    +[IFIconSpecification(Constructors) iosDocumentGlyphSpecification];
  }

  v3 = iosDocumentGlyphSpecification_iconSpecification;

  return v3;
}

void __66__IFIconSpecification_Constructors__iosDocumentGlyphSpecification__block_invoke()
{
  v28[6] = *MEMORY[0x1E69E9840];
  v0 = [IFImageSpecification alloc];
  v27 = @"IFImageSpecificationTagRequired";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v20 = [(IFImageSpecification *)v0 initWithSize:v21 scale:20.0 tags:20.0, 1.0];
  v28[0] = v20;
  v1 = [IFImageSpecification alloc];
  v26 = @"IFImageSpecificationTagRequired";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v18 = [(IFImageSpecification *)v1 initWithSize:v19 scale:144.0 tags:144.0, 1.0];
  v28[1] = v18;
  v2 = [IFImageSpecification alloc];
  v25 = @"IFImageSpecificationTagRequired";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  v4 = [(IFImageSpecification *)v2 initWithSize:v3 scale:20.0 tags:20.0, 2.0];
  v28[2] = v4;
  v5 = [IFImageSpecification alloc];
  v24 = @"IFImageSpecificationTagRequired";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v7 = [(IFImageSpecification *)v5 initWithSize:v6 scale:144.0 tags:144.0, 2.0];
  v28[3] = v7;
  v8 = [IFImageSpecification alloc];
  v23 = @"IFImageSpecificationTagRequired";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v10 = [(IFImageSpecification *)v8 initWithSize:v9 scale:20.0 tags:20.0, 3.0];
  v28[4] = v10;
  v11 = [IFImageSpecification alloc];
  v22 = @"IFImageSpecificationTagRequired";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v13 = [(IFImageSpecification *)v11 initWithSize:v12 scale:144.0 tags:144.0, 3.0];
  v28[5] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:6];

  v15 = [IFIconSpecification alloc];
  v16 = [(IFIconSpecification *)v15 _initWithName:@"Document Glyph" imageSpecifiactions:v14 variants:MEMORY[0x1E695E0F0]];
  v17 = iosDocumentGlyphSpecification_iconSpecification;
  iosDocumentGlyphSpecification_iconSpecification = v16;
}

+ (id)iosDocumentIconSpecification
{
  if (iosDocumentIconSpecification_onceToken != -1)
  {
    +[IFIconSpecification(Constructors) iosDocumentIconSpecification];
  }

  v3 = iosDocumentIconSpecification_iconSpecification;

  return v3;
}

void __65__IFIconSpecification_Constructors__iosDocumentIconSpecification__block_invoke()
{
  v85[15] = *MEMORY[0x1E69E9840];
  v0 = [IFImageSpecification alloc];
  v84[0] = @"IFImageSpecificationTagRequired";
  v84[1] = @"IFImageSpecificationTagPrivate";
  v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:2];
  v65 = [(IFImageSpecification *)v0 initWithSize:v67 scale:34.0 tags:?];
  v85[0] = v65;
  v1 = [IFImageSpecification alloc];
  v83[0] = @"IFImageSpecificationTagRequired";
  v83[1] = @"IFImageSpecificationTagPrivate";
  v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
  v61 = [(IFImageSpecification *)v1 initWithSize:v63 scale:37.0 tags:?];
  v85[1] = v61;
  v2 = [IFImageSpecification alloc];
  v82[0] = @"IFImageSpecificationTagRequired";
  v82[1] = @"IFImageSpecificationTagPrivate";
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:2];
  v57 = [(IFImageSpecification *)v2 initWithSize:v59 scale:64.0 tags:84.0, 1.0];
  v85[2] = v57;
  v3 = [IFImageSpecification alloc];
  v81[0] = @"IFImageSpecificationTagRequired";
  v81[1] = @"IFImageSpecificationTagPrivate";
  v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:2];
  v54 = [(IFImageSpecification *)v3 initWithSize:v55 scale:96.0 tags:128.0, 1.0];
  v85[3] = v54;
  v4 = [IFImageSpecification alloc];
  v80[0] = @"IFImageSpecificationTagRequired";
  v80[1] = @"IFImageSpecificationTagPrivate";
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:2];
  v52 = [(IFImageSpecification *)v4 initWithSize:v53 scale:240.0 tags:320.0, 1.0];
  v85[4] = v52;
  v5 = [IFImageSpecification alloc];
  v79[0] = @"IFImageSpecificationTagRequired";
  v79[1] = @"IFImageSpecificationTagPrivate";
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:2];
  v50 = [(IFImageSpecification *)v5 initWithSize:v51 scale:34.0 tags:44.0, 2.0];
  v85[5] = v50;
  v6 = [IFImageSpecification alloc];
  v78[0] = @"IFImageSpecificationTagRequired";
  v78[1] = @"IFImageSpecificationTagPrivate";
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:2];
  v48 = [(IFImageSpecification *)v6 initWithSize:v49 scale:37.0 tags:48.0, 2.0];
  v85[6] = v48;
  v7 = [IFImageSpecification alloc];
  v77[0] = @"IFImageSpecificationTagRequired";
  v77[1] = @"IFImageSpecificationTagPrivate";
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
  v46 = [(IFImageSpecification *)v7 initWithSize:v47 scale:64.0 tags:84.0, 2.0];
  v85[7] = v46;
  v8 = [IFImageSpecification alloc];
  v76[0] = @"IFImageSpecificationTagRequired";
  v76[1] = @"IFImageSpecificationTagPrivate";
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:2];
  v44 = [(IFImageSpecification *)v8 initWithSize:v45 scale:96.0 tags:128.0, 2.0];
  v85[8] = v44;
  v9 = [IFImageSpecification alloc];
  v75[0] = @"IFImageSpecificationTagRequired";
  v75[1] = @"IFImageSpecificationTagPrivate";
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:2];
  v42 = [(IFImageSpecification *)v9 initWithSize:v43 scale:240.0 tags:320.0, 2.0];
  v85[9] = v42;
  v10 = [IFImageSpecification alloc];
  v74[0] = @"IFImageSpecificationTagRequired";
  v74[1] = @"IFImageSpecificationTagPrivate";
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:2];
  v40 = [(IFImageSpecification *)v10 initWithSize:v41 scale:34.0 tags:44.0, 3.0];
  v85[10] = v40;
  v11 = [IFImageSpecification alloc];
  v73[0] = @"IFImageSpecificationTagRequired";
  v73[1] = @"IFImageSpecificationTagPrivate";
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:2];
  v12 = [(IFImageSpecification *)v11 initWithSize:v39 scale:37.0 tags:48.0, 3.0];
  v85[11] = v12;
  v13 = [IFImageSpecification alloc];
  v72[0] = @"IFImageSpecificationTagRequired";
  v72[1] = @"IFImageSpecificationTagPrivate";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:2];
  v15 = [(IFImageSpecification *)v13 initWithSize:v14 scale:64.0 tags:84.0, 3.0];
  v85[12] = v15;
  v16 = [IFImageSpecification alloc];
  v71[0] = @"IFImageSpecificationTagRequired";
  v71[1] = @"IFImageSpecificationTagPrivate";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];
  v18 = [(IFImageSpecification *)v16 initWithSize:v17 scale:96.0 tags:128.0, 3.0];
  v85[13] = v18;
  v19 = [IFImageSpecification alloc];
  v70[0] = @"IFImageSpecificationTagRequired";
  v70[1] = @"IFImageSpecificationTagPrivate";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
  v21 = [(IFImageSpecification *)v19 initWithSize:v20 scale:240.0 tags:320.0, 3.0];
  v85[14] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:15];

  v23 = +[IFDefaults sharedInstance];
  LODWORD(v20) = [v23 isSolariumEnabled];

  if (v20)
  {
    v24 = [IFImageSpecification alloc];
    v25 = MEMORY[0x1E695E0F0];
    v68 = [(IFImageSpecification *)v24 initWithSize:MEMORY[0x1E695E0F0] scale:51.0 tags:51.0, 1.0];
    v69[0] = v68;
    v66 = [[IFImageSpecification alloc] initWithSize:v25 scale:56.0 tags:56.0, 1.0];
    v69[1] = v66;
    v64 = [[IFImageSpecification alloc] initWithSize:v25 scale:98.0 tags:98.0, 1.0];
    v69[2] = v64;
    v62 = [[IFImageSpecification alloc] initWithSize:v25 scale:148.0 tags:148.0, 1.0];
    v69[3] = v62;
    v60 = [[IFImageSpecification alloc] initWithSize:v25 scale:373.0 tags:373.0, 1.0];
    v69[4] = v60;
    v58 = [[IFImageSpecification alloc] initWithSize:v25 scale:51.0 tags:51.0, 2.0];
    v69[5] = v58;
    v56 = [[IFImageSpecification alloc] initWithSize:v25 scale:56.0 tags:56.0, 2.0];
    v69[6] = v56;
    v26 = [[IFImageSpecification alloc] initWithSize:v25 scale:98.0 tags:98.0, 2.0];
    v69[7] = v26;
    v27 = [[IFImageSpecification alloc] initWithSize:v25 scale:148.0 tags:148.0, 2.0];
    v69[8] = v27;
    v28 = [[IFImageSpecification alloc] initWithSize:v25 scale:373.0 tags:373.0, 2.0];
    v69[9] = v28;
    v29 = [[IFImageSpecification alloc] initWithSize:v25 scale:51.0 tags:51.0, 3.0];
    v69[10] = v29;
    v30 = v22;
    v31 = [[IFImageSpecification alloc] initWithSize:v25 scale:56.0 tags:56.0, 3.0];
    v69[11] = v31;
    v32 = [[IFImageSpecification alloc] initWithSize:v25 scale:98.0 tags:98.0, 3.0];
    v69[12] = v32;
    v33 = [[IFImageSpecification alloc] initWithSize:v25 scale:148.0 tags:148.0, 3.0];
    v69[13] = v33;
    v34 = [[IFImageSpecification alloc] initWithSize:v25 scale:373.0 tags:373.0, 3.0];
    v69[14] = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:15];

    v22 = v35;
  }

  v36 = [IFIconSpecification alloc];
  v37 = [(IFIconSpecification *)v36 _initWithName:@"Document Icon" imageSpecifiactions:v22 variants:MEMORY[0x1E695E0F0]];
  v38 = iosDocumentIconSpecification_iconSpecification;
  iosDocumentIconSpecification_iconSpecification = v37;
}

+ (id)iosMessagesAppIconSpecification
{
  if (iosMessagesAppIconSpecification_onceToken != -1)
  {
    +[IFIconSpecification(Constructors) iosMessagesAppIconSpecification];
  }

  v3 = iosMessagesAppIconSpecification_iconSpecification;

  return v3;
}

void __68__IFIconSpecification_Constructors__iosMessagesAppIconSpecification__block_invoke()
{
  v44[10] = *MEMORY[0x1E69E9840];
  v0 = [IFImageSpecification alloc];
  v43 = @"IFImageSpecificationTagRequired";
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
  v32 = [(IFImageSpecification *)v0 initWithSize:v33 scale:27.0 tags:20.0, 2.0];
  v44[0] = v32;
  v1 = [IFImageSpecification alloc];
  v42 = @"IFImageSpecificationTagRequired";
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  v30 = [(IFImageSpecification *)v1 initWithSize:v31 scale:32.0 tags:24.0, 2.0];
  v44[1] = v30;
  v2 = [IFImageSpecification alloc];
  v41 = @"IFImageSpecificationTagRequired";
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
  v28 = [(IFImageSpecification *)v2 initWithSize:v29 scale:60.0 tags:45.0, 2.0];
  v44[2] = v28;
  v3 = [IFImageSpecification alloc];
  v40 = @"IFImageSpecificationTagRequired";
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  v26 = [(IFImageSpecification *)v3 initWithSize:v27 scale:67.0 tags:50.0, 2.0];
  v44[3] = v26;
  v4 = [IFImageSpecification alloc];
  v39 = @"IFImageSpecificationTagRequired";
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  v24 = [(IFImageSpecification *)v4 initWithSize:v25 scale:74.0 tags:55.0, 2.0];
  v44[4] = v24;
  v5 = [IFImageSpecification alloc];
  v38 = @"IFImageSpecificationTagRequired";
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
  v22 = [(IFImageSpecification *)v5 initWithSize:v23 scale:27.0 tags:20.0, 3.0];
  v44[5] = v22;
  v6 = [IFImageSpecification alloc];
  v37 = @"IFImageSpecificationTagRequired";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  v8 = [(IFImageSpecification *)v6 initWithSize:v7 scale:32.0 tags:24.0, 3.0];
  v44[6] = v8;
  v9 = [IFImageSpecification alloc];
  v36 = @"IFImageSpecificationTagRequired";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  v11 = [(IFImageSpecification *)v9 initWithSize:v10 scale:60.0 tags:45.0, 3.0];
  v44[7] = v11;
  v12 = [IFImageSpecification alloc];
  v35 = @"IFImageSpecificationTagRequired";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v14 = [(IFImageSpecification *)v12 initWithSize:v13 scale:67.0 tags:50.0, 3.0];
  v44[8] = v14;
  v15 = [IFImageSpecification alloc];
  v34 = @"IFImageSpecificationTagRequired";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v17 = [(IFImageSpecification *)v15 initWithSize:v16 scale:74.0 tags:55.0, 3.0];
  v44[9] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:10];

  v19 = [IFIconSpecification alloc];
  v20 = [(IFIconSpecification *)v19 _initWithName:@"Messages Application Icon" imageSpecifiactions:v18 variants:MEMORY[0x1E695E0F0]];
  v21 = iosMessagesAppIconSpecification_iconSpecification;
  iosMessagesAppIconSpecification_iconSpecification = v20;
}

+ (id)watchAppIconSpecification
{
  if (watchAppIconSpecification_onceToken != -1)
  {
    +[IFIconSpecification(Constructors) watchAppIconSpecification];
  }

  v3 = watchAppIconSpecification_iconSpecification;

  return v3;
}

void __62__IFIconSpecification_Constructors__watchAppIconSpecification__block_invoke()
{
  v72[17] = *MEMORY[0x1E69E9840];
  v0 = [IFImageSpecification alloc];
  v71[0] = @"IFImageSpecificationTagAppStore";
  v71[1] = @"IFImageSpecificationTagRequired";
  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];
  v53 = [(IFImageSpecification *)v0 initWithSize:v54 scale:1024.0 tags:1024.0, 1.0];
  v72[0] = v53;
  v1 = [IFImageSpecification alloc];
  v70 = @"IFImageSpecificationTagRequired";
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
  v51 = [(IFImageSpecification *)v1 initWithSize:v52 scale:24.0 tags:24.0, 2.0];
  v72[1] = v51;
  v2 = [IFImageSpecification alloc];
  v69 = @"IFImageSpecificationTagRequired";
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];
  v49 = [(IFImageSpecification *)v2 initWithSize:v50 scale:27.5 tags:27.5, 2.0];
  v72[2] = v49;
  v3 = [IFImageSpecification alloc];
  v68 = @"IFImageSpecificationTagRequired";
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
  v47 = [(IFImageSpecification *)v3 initWithSize:v48 scale:29.0 tags:29.0, 2.0];
  v72[3] = v47;
  v4 = [IFImageSpecification alloc];
  v67 = @"IFImageSpecificationTagRequired";
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
  v45 = [(IFImageSpecification *)v4 initWithSize:v46 scale:33.0 tags:33.0, 2.0];
  v72[4] = v45;
  v5 = [IFImageSpecification alloc];
  v66[0] = @"IFImageSpecificationTagHomeScreen";
  v66[1] = @"IFImageSpecificationTagRequired";
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
  v43 = [(IFImageSpecification *)v5 initWithSize:v44 scale:40.0 tags:40.0, 2.0];
  v72[5] = v43;
  v6 = [IFImageSpecification alloc];
  v65[0] = @"IFImageSpecificationTagHomeScreen";
  v65[1] = @"IFImageSpecificationTagRequired";
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
  v41 = [(IFImageSpecification *)v6 initWithSize:v42 scale:44.0 tags:44.0, 2.0];
  v72[6] = v41;
  v7 = [IFImageSpecification alloc];
  v64[0] = @"IFImageSpecificationTagHomeScreen";
  v64[1] = @"IFImageSpecificationTagRequired";
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
  v39 = [(IFImageSpecification *)v7 initWithSize:v40 scale:46.0 tags:46.0, 2.0];
  v72[7] = v39;
  v8 = [IFImageSpecification alloc];
  v63[0] = @"IFImageSpecificationTagHomeScreen";
  v63[1] = @"IFImageSpecificationTagRequired";
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
  v37 = [(IFImageSpecification *)v8 initWithSize:v38 scale:50.0 tags:50.0, 2.0];
  v72[8] = v37;
  v9 = [IFImageSpecification alloc];
  v62[0] = @"IFImageSpecificationTagHomeScreen";
  v62[1] = @"IFImageSpecificationTagRequired";
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
  v35 = [(IFImageSpecification *)v9 initWithSize:v36 scale:51.0 tags:51.0, 2.0];
  v72[9] = v35;
  v10 = [IFImageSpecification alloc];
  v61[0] = @"IFImageSpecificationTagHomeScreen";
  v61[1] = @"IFImageSpecificationTagRequired";
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
  v33 = [(IFImageSpecification *)v10 initWithSize:v34 scale:54.0 tags:54.0, 2.0];
  v72[10] = v33;
  v11 = [IFImageSpecification alloc];
  v60 = @"IFImageSpecificationTagRequired";
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
  v31 = [(IFImageSpecification *)v11 initWithSize:v32 scale:86.0 tags:86.0, 2.0];
  v72[11] = v31;
  v12 = [IFImageSpecification alloc];
  v59 = @"IFImageSpecificationTagRequired";
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
  v29 = [(IFImageSpecification *)v12 initWithSize:v30 scale:98.0 tags:98.0, 2.0];
  v72[12] = v29;
  v13 = [IFImageSpecification alloc];
  v58 = @"IFImageSpecificationTagRequired";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
  v15 = [(IFImageSpecification *)v13 initWithSize:v14 scale:108.0 tags:108.0, 2.0];
  v72[13] = v15;
  v16 = [IFImageSpecification alloc];
  v57 = @"IFImageSpecificationTagRequired";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
  v18 = [(IFImageSpecification *)v16 initWithSize:v17 scale:117.0 tags:117.0, 2.0];
  v72[14] = v18;
  v19 = [IFImageSpecification alloc];
  v56 = @"IFImageSpecificationTagRequired";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
  v21 = [(IFImageSpecification *)v19 initWithSize:v20 scale:129.0 tags:129.0, 2.0];
  v72[15] = v21;
  v22 = [IFImageSpecification alloc];
  v55 = @"IFImageSpecificationTagRequired";
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
  v24 = [(IFImageSpecification *)v22 initWithSize:v23 scale:29.0 tags:29.0, 3.0];
  v72[16] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:17];

  v26 = [IFIconSpecification alloc];
  v27 = [(IFIconSpecification *)v26 _initWithName:@"Application Icon" imageSpecifiactions:v25 variants:MEMORY[0x1E695E0F0]];
  v28 = watchAppIconSpecification_iconSpecification;
  watchAppIconSpecification_iconSpecification = v27;
}

+ (id)tvAppIconSpecification
{
  if (tvAppIconSpecification_onceToken != -1)
  {
    +[IFIconSpecification(Constructors) tvAppIconSpecification];
  }

  v3 = tvAppIconSpecification_iconSpecification;

  return v3;
}

void __59__IFIconSpecification_Constructors__tvAppIconSpecification__block_invoke()
{
  v32[7] = *MEMORY[0x1E69E9840];
  v0 = [IFImageSpecification alloc];
  v31[0] = @"IFImageSpecificationTagHomeScreen";
  v31[1] = @"IFImageSpecificationTagRequired";
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v23 = [(IFImageSpecification *)v0 initWithSize:v24 scale:250.0 tags:150.0, 1.0];
  v32[0] = v23;
  v1 = [IFImageSpecification alloc];
  v30[0] = @"IFImageSpecificationTagHomeScreen";
  v30[1] = @"IFImageSpecificationTagRequired";
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v21 = [(IFImageSpecification *)v1 initWithSize:v22 scale:300.0 tags:180.0, 1.0];
  v32[1] = v21;
  v2 = [IFImageSpecification alloc];
  v29[0] = @"IFImageSpecificationTagHomeScreen";
  v29[1] = @"IFImageSpecificationTagRequired";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v19 = [(IFImageSpecification *)v2 initWithSize:v20 scale:400.0 tags:240.0, 1.0];
  v32[2] = v19;
  v3 = [IFImageSpecification alloc];
  v28[0] = @"IFImageSpecificationTagAppStore";
  v28[1] = @"IFImageSpecificationTagRequired";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v4 = [(IFImageSpecification *)v3 initWithSize:v18 scale:1280.0 tags:768.0, 1.0];
  v32[3] = v4;
  v5 = [IFImageSpecification alloc];
  v27[0] = @"IFImageSpecificationTagHomeScreen";
  v27[1] = @"IFImageSpecificationTagRequired";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v7 = [(IFImageSpecification *)v5 initWithSize:v6 scale:250.0 tags:150.0, 2.0];
  v32[4] = v7;
  v8 = [IFImageSpecification alloc];
  v26[0] = @"IFImageSpecificationTagHomeScreen";
  v26[1] = @"IFImageSpecificationTagRequired";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v10 = [(IFImageSpecification *)v8 initWithSize:v9 scale:300.0 tags:180.0, 2.0];
  v32[5] = v10;
  v11 = [IFImageSpecification alloc];
  v25[0] = @"IFImageSpecificationTagHomeScreen";
  v25[1] = @"IFImageSpecificationTagRequired";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v13 = [(IFImageSpecification *)v11 initWithSize:v12 scale:400.0 tags:240.0, 2.0];
  v32[6] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:7];

  v15 = [IFIconSpecification alloc];
  v16 = [(IFIconSpecification *)v15 _initWithName:@"Application Icon" imageSpecifiactions:v14 variants:MEMORY[0x1E695E0F0]];
  v17 = tvAppIconSpecification_iconSpecification;
  tvAppIconSpecification_iconSpecification = v16;
}

+ (id)rOSAppIconSpecification
{
  if (rOSAppIconSpecification_onceToken != -1)
  {
    +[IFIconSpecification(Constructors) rOSAppIconSpecification];
  }

  v3 = rOSAppIconSpecification_iconSpecification;

  return v3;
}

void __60__IFIconSpecification_Constructors__rOSAppIconSpecification__block_invoke()
{
  v64[15] = *MEMORY[0x1E69E9840];
  v0 = [IFImageSpecification alloc];
  v63[0] = @"IFImageSpecificationTagAppStore";
  v63[1] = @"IFImageSpecificationTagRequired";
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
  v47 = [(IFImageSpecification *)v0 initWithSize:v48 scale:1024.0 tags:1024.0, 1.0];
  v64[0] = v47;
  v1 = [IFImageSpecification alloc];
  v62 = @"IFImageSpecificationTagRequired";
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
  v45 = [(IFImageSpecification *)v1 initWithSize:v46 scale:32.0 tags:32.0, 2.0];
  v64[1] = v45;
  v2 = [IFImageSpecification alloc];
  v61 = @"IFImageSpecificationTagRequired";
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
  v43 = [(IFImageSpecification *)v2 initWithSize:v44 scale:44.0 tags:44.0, 2.0];
  v64[2] = v43;
  v3 = [IFImageSpecification alloc];
  v60 = @"IFImageSpecificationTagRequired";
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
  v41 = [(IFImageSpecification *)v3 initWithSize:v42 scale:52.0 tags:52.0, 2.0];
  v64[3] = v41;
  v4 = [IFImageSpecification alloc];
  v59 = @"IFImageSpecificationTagRequired";
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
  v39 = [(IFImageSpecification *)v4 initWithSize:v40 scale:88.0 tags:88.0, 2.0];
  v64[4] = v39;
  v5 = [IFImageSpecification alloc];
  v58 = @"IFImageSpecificationTagRequired";
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
  v37 = [(IFImageSpecification *)v5 initWithSize:v38 scale:128.0 tags:128.0, 2.0];
  v64[5] = v37;
  v6 = [IFImageSpecification alloc];
  v57 = @"IFImageSpecificationTagRequired";
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
  v35 = [(IFImageSpecification *)v6 initWithSize:v36 scale:512.0 tags:512.0, 2.0];
  v64[6] = v35;
  v7 = [IFImageSpecification alloc];
  v56 = @"IFImageSpecificationTagRequired";
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
  v33 = [(IFImageSpecification *)v7 initWithSize:v34 scale:32.0 tags:32.0, 3.0];
  v64[7] = v33;
  v8 = [IFImageSpecification alloc];
  v55 = @"IFImageSpecificationTagRequired";
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
  v31 = [(IFImageSpecification *)v8 initWithSize:v32 scale:44.0 tags:44.0, 3.0];
  v64[8] = v31;
  v9 = [IFImageSpecification alloc];
  v54 = @"IFImageSpecificationTagRequired";
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
  v29 = [(IFImageSpecification *)v9 initWithSize:v30 scale:20.0 tags:20.0, 2.0];
  v64[9] = v29;
  v10 = [IFImageSpecification alloc];
  v53 = @"IFImageSpecificationTagRequired";
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
  v27 = [(IFImageSpecification *)v10 initWithSize:v28 scale:24.0 tags:24.0, 2.0];
  v64[10] = v27;
  v11 = [IFImageSpecification alloc];
  v52 = @"IFImageSpecificationTagRequired";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
  v13 = [(IFImageSpecification *)v11 initWithSize:v12 scale:40.0 tags:40.0, 2.0];
  v64[11] = v13;
  v14 = [IFImageSpecification alloc];
  v51 = @"IFImageSpecificationTagRequired";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
  v16 = [(IFImageSpecification *)v14 initWithSize:v15 scale:64.0 tags:64.0, 2.0];
  v64[12] = v16;
  v17 = [IFImageSpecification alloc];
  v50 = @"IFImageSpecificationTagRequired";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
  v19 = [(IFImageSpecification *)v17 initWithSize:v18 scale:96.0 tags:96.0, 2.0];
  v64[13] = v19;
  v20 = [IFImageSpecification alloc];
  v49 = @"IFImageSpecificationTagRequired";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
  v22 = [(IFImageSpecification *)v20 initWithSize:v21 scale:24.0 tags:24.0, 3.0];
  v64[14] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:15];

  v24 = [IFIconSpecification alloc];
  v25 = [(IFIconSpecification *)v24 _initWithName:@"Application Icon" imageSpecifiactions:v23 variants:MEMORY[0x1E695E0F0]];
  v26 = rOSAppIconSpecification_iconSpecification;
  rOSAppIconSpecification_iconSpecification = v25;
}

@end
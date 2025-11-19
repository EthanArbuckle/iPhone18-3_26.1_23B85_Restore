@interface TCFontFamily
- (BOOL)allFamilyIsBold;
- (BOOL)allFamilyIsItalic;
- (BOOL)doesAnyNonBoldVariantExistForFont:(id)a3;
- (BOOL)traitsAreAdditive;
- (TCFontFamily)initWithDictionary:(id)a3;
- (TCFontFamily)initWithNamesByLanguage:(id)a3 members:(id)a4;
- (id)bestMatchForStyling:(TCFontStyling)a3;
- (id)description;
- (id)englishName;
- (id)equivalentDictionary;
- (id)memberForFullName:(id)a3;
- (id)memberForPSName:(id)a3;
- (id)regularVariant:(BOOL)a3;
- (id)variantByAddingBoldToFont:(id)a3;
- (id)variantByRemovingBoldFromFont:(id)a3;
- (id)variantByTogglingItalicOfFont:(id)a3;
- (id)weightVariantsOfFont:(id)a3;
- (unint64_t)boldFontIndexInWeightVariants:(id)a3;
- (unint64_t)regularFontIndexInWeightVariants:(id)a3;
@end

@implementation TCFontFamily

- (TCFontFamily)initWithNamesByLanguage:(id)a3 members:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v32 = a3;
  v35 = a4;
  v47.receiver = self;
  v47.super_class = TCFontFamily;
  v6 = [(TCFontFamily *)&v47 init];
  v33 = v6;
  if (v6)
  {
    v7 = v6;
    v8 = [v32 copy];
    namesByLanguage = v7->_namesByLanguage;
    v7->_namesByLanguage = v8;

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v35;
    v10 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v10)
    {
      v11 = *v44;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v44 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v38 = *(*(&v43 + 1) + 8 * v12);
        if ([v38 styling])
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v35 = obj;
      v15 = [v35 countByEnumeratingWithState:&v39 objects:v48 count:16];
      if (!v15)
      {

        v13 = 0;
LABEL_28:
        v14 = obj;
        goto LABEL_29;
      }

      v16 = 0;
      v36 = *v40;
      v37 = 0;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v40 != v36)
          {
            objc_enumerationMutation(v35);
          }

          v18 = *(*(&v39 + 1) + 8 * i);
          if ([v18 styling])
          {
            v19 = [v18 styling];
            v16 |= v19 != [v38 styling];
          }

          else
          {
            if (!v37)
            {
              v37 = [v35 mutableCopy];
            }

            v20 = [v18 styling];
            v22 = v21;
            v23 = [v38 styling];
            v24 = [TCFont alloc];
            v25 = [v18 namesByLanguage];
            v26 = [v18 psName];
            v27 = [(TCFont *)v24 initWithNamesByLanguage:v25 psName:v26 styling:v20 & 0xFFFFFFFF00000000 | v23, v22];

            [v37 replaceObjectAtIndex:objc_msgSend(v37 withObject:{"indexOfObjectIdenticalTo:", v18), v27}];
          }
        }

        v15 = [v35 countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v15);

      if ((v16 & (v37 != 0)) == 1)
      {
        [v32 objectForKeyedSubscript:&unk_286F6D860];

        v28 = v37;
LABEL_27:
        v13 = v28;
        v35 = v13;
        goto LABEL_28;
      }

      v28 = v37;
      if (v37)
      {
        goto LABEL_27;
      }

      v13 = 0;
    }

    else
    {
LABEL_10:
      v13 = 0;
      v14 = obj;
      v35 = obj;
LABEL_29:
    }

    v29 = [v35 copy];
    members = v33->_members;
    v33->_members = v29;

    [(NSArray *)v33->_members makeObjectsPerformSelector:sel_setFamily_ withObject:v33];
  }

  return v33;
}

- (id)bestMatchForStyling:(TCFontStyling)a3
{
  v3 = *&a3.weight;
  v27 = *MEMORY[0x277D85DE8];
  [(TCFontFamily *)self members];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  obj = v23 = 0u;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = HIDWORD(v3);
    v8 = *v23;
    v9 = (v3 >> 8) & 1;
    v10 = v3;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        [v12 styling];
        v15 = v9 + (v13 << 23 >> 31);
        if (v15 < 0)
        {
          v15 = -v15;
        }

        v16 = v10 - v13;
        if (v16 < 0)
        {
          v16 = v13 - v10;
        }

        v17 = v7 - v14;
        if (v7 - v14 < 0)
        {
          v17 = v14 - v7;
        }

        v18 = v16 + v17 + 200 * v15;
        if (!v6 || v18 < v5)
        {
          v19 = v12;

          v5 = v18;
          v6 = v19;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)memberForPSName:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(TCFontFamily *)self members];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v5 = v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 psName];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)memberForFullName:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(TCFontFamily *)self members];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  obj = v27 = 0u;
  v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v20 = *v27;
    do
    {
      v19 = v5;
      for (i = 0; i != v19; ++i)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v8 = [v7 namesByLanguage];
        v9 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v9)
        {
          v10 = *v23;
          while (2)
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v23 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v22 + 1) + 8 * j);
              v13 = [v7 namesByLanguage];
              v14 = [v13 objectForKeyedSubscript:v12];

              v15 = [v14 fullName];
              v16 = [v15 isEqualToString:v4];

              if (v16)
              {
                v17 = v7;

                goto LABEL_19;
              }
            }

            v9 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      v17 = 0;
    }

    while (v5);
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  return v17;
}

- (id)regularVariant:(BOOL)a3
{
  v49 = a3;
  v62 = *MEMORY[0x277D85DE8];
  v50 = [(TCFontFamily *)self members];
  if ([v50 count] == 1)
  {
    v3 = [v50 firstObject];
    goto LABEL_58;
  }

  {
    -[TCFontFamily regularVariant:]::sRegularSuffixArray = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"regular", @"roman", @"plain", @"normal", @"book", 0}];
  }

  {
    [TCFontFamily regularVariant:]::sRegularSuffixExtendedArray = [-[TCFontFamily regularVariant:]::sRegularSuffixArray arrayByAddingObjectsFromArray:&unk_286F6D308];
  }

  v4 = &[TCFontFamily regularVariant:]::sRegularSuffixExtendedArray;
  if (!v49)
  {
    v4 = &[TCFontFamily regularVariant:]::sRegularSuffixArray;
  }

  v5 = *v4;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v50;
  v6 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v6)
  {
    v3 = 0;
    v7 = *v57;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v57 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v56 + 1) + 8 * i);
        v11 = [v10 englishName];
        v12 = [v11 styleName];
        v13 = [v12 lowercaseString];

        v14 = [v5 indexOfObject:v13];
        if (v14 < v8)
        {
          v15 = v10;

          v3 = v15;
          v8 = v14;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v6);

    if (v3)
    {
      if (v49)
      {
        goto LABEL_57;
      }

LABEL_27:
      v25 = [v3 englishName];
      v26 = [v25 fullName];
      v27 = [v25 styleName];
      v28 = [v26 hasSuffix:v27];

      if (!v28)
      {
        goto LABEL_32;
      }

      {
        -[TCFontFamily regularVariant:]::sInvalidFullNameSuffixSet = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"regular", @"normal", 0}];
      }

      v29 = [TCFontFamily regularVariant:]::sInvalidFullNameSuffixSet;
      v30 = [v25 styleName];
      v31 = [v30 lowercaseString];
      v32 = [v29 containsObject:v31];

      if (!v32)
      {
        goto LABEL_32;
      }

      {
        -[TCFontFamily regularVariant:]::sFontsWithRegular = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"Athelas", @"Avenir Next", @"Avenir Next Condensed", @"Kefa", @"Lucida Fax", @"Lucida Sans", @"Lucida Sans Typewriter", @"Menlo", @"Optima", @"STIXGeneral", @"Superclarendon", 0}];
      }

      v33 = [TCFontFamily regularVariant:]::sFontsWithRegular;
      v34 = [(TCFontFamily *)self englishName];
      LOBYTE(v33) = [v33 containsObject:v34];

      if ((v33 & 1) == 0)
      {
        v35 = v3;
LABEL_54:
        v3 = 0;
      }

      else
      {
LABEL_32:
        if (!v3)
        {
LABEL_56:

          goto LABEL_57;
        }

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v35 = obj;
        v36 = [v35 countByEnumeratingWithState:&v52 objects:v60 count:16];
        if (v36)
        {
          v37 = *v53;
          while (2)
          {
            for (j = 0; j != v36; ++j)
            {
              if (*v53 != v37)
              {
                objc_enumerationMutation(v35);
              }

              v39 = *(*(&v52 + 1) + 8 * j);
              if (v39 != v3)
              {
                v40 = [v39 styling];
                v42 = v41;
                v43 = [v3 styling];
                v45 = v40 == v43 && (v43 ^ v40) >> 32 == 0;
                if (v45 && v42 == v44 && BYTE1(v42) == BYTE1(v44) && (v44 ^ v42) >> 32 == 0)
                {

                  goto LABEL_54;
                }
              }
            }

            v36 = [v35 countByEnumeratingWithState:&v52 objects:v60 count:16];
            if (v36)
            {
              continue;
            }

            break;
          }
        }
      }

      goto LABEL_56;
    }
  }

  else
  {
  }

  if ([obj count] == 2)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      v18 = v17;
      v19 = [obj objectAtIndexedSubscript:v16];
      v20 = [obj objectAtIndexedSubscript:v16 ^ 1];
      [v19 styling];
      [v20 styling];

      v17 = 0;
      v16 = 1;
    }

    while ((v18 & 1) != 0);
  }

  if (!v49)
  {
    v3 = 0;
    goto LABEL_27;
  }

  v21 = [obj firstObject];
  v22 = [v21 styling];
  v24 = v23;

  v3 = [(TCFontFamily *)self bestMatchForStyling:v22, v24 & 0xFFFF0000];
LABEL_57:

LABEL_58:

  return v3;
}

- (BOOL)traitsAreAdditive
{
  v2 = [(TCFontFamily *)self regularVariant:0];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)allFamilyIsItalic
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(TCFontFamily *)self members];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v9 + 1) + 8 * i) styling];
        if ((v6 & 0x100) == 0)
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (id)variantByTogglingItalicOfFont:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v4 = [v20 styling];
  v6 = v5;
  [(TCFontFamily *)self members];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v7 = v22 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        v13 = [v12 styling];
        if (v13 == v4 && (v13 ^ v4) >> 32 == 0 && v14 == v6 && (v14 & 0xFF00 ^ v6 & 0x100) == 0x100 && (v14 ^ v6) >> 32 == 0)
        {
          if (v9)
          {

            goto LABEL_25;
          }

          v9 = v12;
        }

        ++v11;
      }

      while (v8 != v11);
      v18 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      v8 = v18;
    }

    while (v18);
  }

  else
  {
LABEL_25:
    v9 = 0;
  }

  return v9;
}

- (BOOL)allFamilyIsBold
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(TCFontFamily *)self members];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v9 + 1) + 8 * i) styling];
        if (v6 < 30)
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (id)weightVariantsOfFont:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [a3 styling];
  v6 = v5;
  v7 = [MEMORY[0x277CBEB18] array];
  [(TCFontFamily *)self members];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v8 = v23 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        [v12 styling];
        v14 = v13;
        v15 = [v12 styling];
        v17 = v15 == v4 && (v15 ^ v4) >> 32 == 0;
        if (v17 && v16 == v14 && BYTE1(v6) == BYTE1(v16) && (v16 ^ v6) >> 32 == 0)
        {
          [v7 addObject:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v19 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      v9 = v19;
    }

    while (v19);
  }

  v20 = [v7 sortedArrayUsingComparator:&__block_literal_global_42];

  return v20;
}

uint64_t __37__TCFontFamily_weightVariantsOfFont___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 styling];
  v6 = v5;
  [v4 styling];
  v8 = (v6 - v7) << 24;
  v9 = v8 == 0;
  if (v8)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  if (((v6 - v7) & 0x80) != 0 || v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (unint64_t)boldFontIndexInWeightVariants:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    while (1)
    {
      v7 = [v3 objectAtIndexedSubscript:v6 - 1];
      [v7 styling];
      if (v8 <= 40)
      {
        break;
      }

      if (!--v6)
      {
        v5 = 0;
        goto LABEL_13;
      }
    }

    if (v6 < v5 && v8 < 30)
    {
      v5 = v6;
    }

    else
    {
      v5 = v6 - 1;
    }
  }

LABEL_13:

  return v5;
}

- (unint64_t)regularFontIndexInWeightVariants:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = [v3 objectAtIndexedSubscript:v5];
      [v6 styling];
      if (!(v7 << 24))
      {
        break;
      }

      if (v7 << 24 >= 1)
      {
        if (v5)
        {
          --v5;
        }

        else
        {
          v5 = 0;
        }

        break;
      }

      ++v5;

      if (v4 == v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v5 = v4 - 1;
  }

  return v5;
}

- (id)variantByAddingBoldToFont:(id)a3
{
  v4 = a3;
  v5 = [(TCFontFamily *)self members];
  if ([v5 count] == 1 || (objc_msgSend(v4, "styling"), v6 > 39) || -[TCFontFamily allFamilyIsBold](self, "allFamilyIsBold"))
  {
    v7 = 0;
  }

  else
  {
    v9 = [(TCFontFamily *)self weightVariantsOfFont:v4];
    v10 = [v9 indexOfObjectIdenticalTo:v4];
    if ([v9 count] >= 2 && (v11 = -[TCFontFamily boldFontIndexInWeightVariants:](self, "boldFontIndexInWeightVariants:", v9), v10 == -[TCFontFamily regularFontIndexInWeightVariants:](self, "regularFontIndexInWeightVariants:", v9)))
    {
      v7 = [v9 objectAtIndexedSubscript:v11];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)variantByRemovingBoldFromFont:(id)a3
{
  v4 = a3;
  v5 = [(TCFontFamily *)self members];
  if ([v5 count] == 1 || (objc_msgSend(v4, "styling"), v6 < 1) || -[TCFontFamily allFamilyIsBold](self, "allFamilyIsBold") || !-[TCFontFamily traitsAreAdditive](self, "traitsAreAdditive"))
  {
    v11 = 0;
  }

  else
  {
    v7 = [(TCFontFamily *)self weightVariantsOfFont:v4];
    v8 = [v7 indexOfObjectIdenticalTo:v4];
    if ([v7 count] >= 2 && (v9 = -[TCFontFamily boldFontIndexInWeightVariants:](self, "boldFontIndexInWeightVariants:", v7), v10 = -[TCFontFamily regularFontIndexInWeightVariants:](self, "regularFontIndexInWeightVariants:", v7), v8 == v9))
    {
      v11 = [v7 objectAtIndexedSubscript:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)doesAnyNonBoldVariantExistForFont:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [a3 styling];
  v6 = v5;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [(TCFontFamily *)self members];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        [v11 styling];
        v13 = v12;
        v14 = [v11 styling];
        v16 = v14 == v4 && (v14 ^ v4) >> 32 == 0;
        if (v16 && v15 == v13 && BYTE1(v6) == BYTE1(v15) && (v15 ^ v6) >> 32 == 0)
        {
          [v11 styling];
          if (v18 < 30)
          {
            v20 = 1;
            goto LABEL_22;
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v19 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      v8 = v19;
    }

    while (v19);
  }

  v20 = 0;
LABEL_22:

  return v20;
}

- (id)englishName
{
  v2 = [(TCFontFamily *)self namesByLanguage];
  v3 = [v2 objectForKeyedSubscript:&unk_286F6D860];

  return v3;
}

- (id)equivalentDictionary
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [(TCFontFamily *)self namesByLanguage];
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v6 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v9 = TCFontMacLanguageIDToNSString([v8 unsignedShortValue]);
        v10 = [(TCFontFamily *)self namesByLanguage];
        v11 = [v10 objectForKeyedSubscript:v8];
        [v3 setObject:v11 forKeyedSubscript:v9];
      }

      v5 = [v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v5);
  }

  v12 = [MEMORY[0x277CBEB18] array];
  v13 = [(TCFontFamily *)self members];
  v14 = [v13 sortedArrayUsingComparator:&__block_literal_global_260];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = *v23;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = [*(*(&v22 + 1) + 8 * j) equivalentDictionary];
        [v12 addObject:v19];
      }

      v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }

  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v3, @"names-by-language", v12, @"members", 0, v22}];

  return v20;
}

uint64_t __36__TCFontFamily_equivalentDictionary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 psName];
  v6 = [v4 psName];
  v7 = [v5 compare:v6];

  return v7;
}

- (TCFontFamily)initWithDictionary:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v24 = a3;
  v22 = self;
  v23 = [v24 objectForKeyedSubscript:@"names-by-language"];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = v23;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = *v30;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        v10 = TCFontMacLanguageIDFromNSString(v9);
        v11 = [v5 objectForKeyedSubscript:v9];
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v10];
        [v4 setObject:v11 forKeyedSubscript:v12];
      }

      v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v6);
  }

  v13 = [v24 objectForKeyedSubscript:@"members"];
  v14 = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v16)
  {
    v17 = *v26;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = [[TCFont alloc] initWithDictionary:*(*(&v25 + 1) + 8 * j)];
        [v14 addObject:v19];
      }

      v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v16);
  }

  v20 = [(TCFontFamily *)v22 initWithNamesByLanguage:v4 members:v14];
  return v20;
}

- (id)description
{
  v2 = [(TCFontFamily *)self equivalentDictionary];
  v3 = [v2 description];

  return v3;
}

@end
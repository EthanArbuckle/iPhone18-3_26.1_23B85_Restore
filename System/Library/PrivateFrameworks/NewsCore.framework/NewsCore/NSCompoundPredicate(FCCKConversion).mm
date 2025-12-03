@interface NSCompoundPredicate(FCCKConversion)
- (id)fcck_queryFiltersWithTranslator:()FCCKConversion error:;
@end

@implementation NSCompoundPredicate(FCCKConversion)

- (id)fcck_queryFiltersWithTranslator:()FCCKConversion error:
{
  v33[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([self compoundPredicateType] != 1)
  {
    if ([self compoundPredicateType])
    {
      if (a4)
      {
        [MEMORY[0x1E695B978] errorWithCode:1009 format:{@"Unexpected expression: %@", self}];
        *a4 = v17 = 0;
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_56;
    }

    subpredicates = [self subpredicates];
    v20 = [subpredicates objectAtIndexedSubscript:0];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ![v20 compoundPredicateType])
    {
      v17 = [v20 fcck_queryFiltersWithTranslator:v6 error:a4];
LABEL_55:

      goto LABEL_56;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v20 fcck_queryFiltersWithTranslator:v6 error:0];
      v22 = v21;
      if (v21 && [v21 count] == 1)
      {
        v23 = [v22 objectAtIndexedSubscript:0];
        v17 = 0;
        switch([v23 type])
        {
          case 2u:
            v24 = 1;
            goto LABEL_48;
          case 3u:
            v24 = 4;
            goto LABEL_48;
          case 4u:
            v24 = 3;
            goto LABEL_48;
          case 5u:
            v24 = 8;
            goto LABEL_48;
          case 6u:
            v24 = 7;
            goto LABEL_48;
          case 7u:
            v24 = 6;
            goto LABEL_48;
          case 8u:
            v24 = 5;
            goto LABEL_48;
          case 9u:
          case 0xAu:
          case 0xBu:
            goto LABEL_49;
          case 0xCu:
            v24 = 13;
            goto LABEL_48;
          case 0xDu:
            v24 = 12;
            goto LABEL_48;
          case 0xEu:
            v24 = 15;
            goto LABEL_48;
          case 0xFu:
            v24 = 14;
            goto LABEL_48;
          case 0x10u:
            v24 = 17;
            goto LABEL_48;
          case 0x11u:
            v24 = 16;
            goto LABEL_48;
          case 0x12u:
            v24 = 19;
            goto LABEL_48;
          case 0x13u:
            v24 = 18;
            goto LABEL_48;
          case 0x14u:
            v24 = 21;
            goto LABEL_48;
          case 0x15u:
            v24 = 20;
            goto LABEL_48;
          default:
            v24 = 2;
LABEL_48:
            [v23 setType:v24];
            v33[0] = v23;
            v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
LABEL_49:

            break;
        }
      }

      else
      {
        v17 = 0;
      }

      if (v17)
      {
        goto LABEL_55;
      }

      if (a4)
      {
        [MEMORY[0x1E695B978] errorWithCode:1009 format:{@"Invalid NOT predicate: %@", self}];
        goto LABEL_53;
      }
    }

    else if (a4)
    {
      [MEMORY[0x1E695B978] errorWithCode:1009 format:{@"Expected comparison subpredicate: %@", self}];
LABEL_53:
      *a4 = v17 = 0;
      goto LABEL_55;
    }

    v17 = 0;
    goto LABEL_55;
  }

  v7 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  subpredicates2 = [self subpredicates];
  v9 = [subpredicates2 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v29;
    while (2)
    {
      v13 = 0;
      v14 = v11;
      do
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(subpredicates2);
        }

        v15 = *(*(&v28 + 1) + 8 * v13);
        v27 = v14;
        v16 = [v15 fcck_queryFiltersWithTranslator:v6 error:&v27];
        v11 = v27;

        [v7 addObjectsFromArray:v16];
        if (a4 && v11)
        {
          v18 = v11;
          *a4 = v11;

          v17 = 0;
          goto LABEL_18;
        }

        ++v13;
        v14 = v11;
      }

      while (v10 != v13);
      v10 = [subpredicates2 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

  v17 = v7;
LABEL_18:

LABEL_56:
  v25 = *MEMORY[0x1E69E9840];

  return v17;
}

@end
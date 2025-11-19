@interface EFHTMLUtilities
+ (id)_cssSnippetFromDictionary:(id)a3;
+ (id)htmlSnippetWithTag:(id)a3 includeTrailingTag:(BOOL)a4 attributes:(id)a5;
@end

@implementation EFHTMLUtilities

+ (id)_cssSnippetFromDictionary:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AD60] string];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__EFHTMLUtilities__cssSnippetFromDictionary___block_invoke;
  v9[3] = &unk_1E8248C30;
  v11 = a2;
  v12 = a1;
  v7 = v6;
  v10 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
}

void __45__EFHTMLUtilities__cssSnippetFromDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 40) object:*(a1 + 48) file:@"EFHTMLUtilities.m" lineNumber:17 description:@"values must be string types"];
  }

  [*(a1 + 32) appendFormat:@"%@: %@;", v7, v5];
}

+ (id)htmlSnippetWithTag:(id)a3 includeTrailingTag:(BOOL)a4 attributes:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  v11 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", v9];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __68__EFHTMLUtilities_htmlSnippetWithTag_includeTrailingTag_attributes___block_invoke;
  v17 = &unk_1E8248C58;
  v12 = v11;
  v18 = v12;
  v19 = a1;
  v20 = a2;
  [v10 enumerateKeysAndObjectsUsingBlock:&v14];
  if (v6)
  {
    [v12 appendFormat:@"></%@", v9, v14, v15, v16, v17];
  }

  [v12 appendString:@">"];

  return v12;
}

void __68__EFHTMLUtilities_htmlSnippetWithTag_includeTrailingTag_attributes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = *(a1 + 32);
    v7 = [v5 ef_stringByEscapingForXML];
    [v6 appendFormat:@" %@=%@", v10, v7];
LABEL_3:

    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = *(a1 + 32);
      v7 = [*(a1 + 40) _cssSnippetFromDictionary:v5];
      [v8 appendFormat:@" %@=%@", v10, v7];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = *(a1 + 32);
        v7 = [v5 absoluteString];
        [v9 appendFormat:@" %@=%@", v10, v7];
      }

      else
      {
        v7 = [MEMORY[0x1E696AAA8] currentHandler];
        [v7 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"EFHTMLUtilities.m" lineNumber:35 description:{@"unexpected value in attributes dictionary at key %@: %@", v10, v5}];
      }
    }

    goto LABEL_3;
  }

  [*(a1 + 32) appendFormat:@" %@=%@", v10, v5];
LABEL_6:
}

@end
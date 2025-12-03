@interface EFHTMLUtilities
+ (id)_cssSnippetFromDictionary:(id)dictionary;
+ (id)htmlSnippetWithTag:(id)tag includeTrailingTag:(BOOL)trailingTag attributes:(id)attributes;
@end

@implementation EFHTMLUtilities

+ (id)_cssSnippetFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  string = [MEMORY[0x1E696AD60] string];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__EFHTMLUtilities__cssSnippetFromDictionary___block_invoke;
  v9[3] = &unk_1E8248C30;
  v11 = a2;
  selfCopy = self;
  v7 = string;
  v10 = v7;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v9];

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

+ (id)htmlSnippetWithTag:(id)tag includeTrailingTag:(BOOL)trailingTag attributes:(id)attributes
{
  trailingTagCopy = trailingTag;
  tagCopy = tag;
  attributesCopy = attributes;
  tagCopy = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", tagCopy];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __68__EFHTMLUtilities_htmlSnippetWithTag_includeTrailingTag_attributes___block_invoke;
  v17 = &unk_1E8248C58;
  v12 = tagCopy;
  v18 = v12;
  selfCopy = self;
  v20 = a2;
  [attributesCopy enumerateKeysAndObjectsUsingBlock:&v14];
  if (trailingTagCopy)
  {
    [v12 appendFormat:@"></%@", tagCopy, v14, v15, v16, v17];
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
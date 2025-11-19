@interface ICTrackedParagraphTreeNode
+ (id)nodeFromTrackedParagraph:(id)a3 textView:(id)a4;
+ (id)placeholderNodeWithIndentation:(unint64_t)a3;
- (ICTrackedParagraphTreeNode)parent;
- (NSString)recurisiveDescription;
- (id)description;
- (id)linerizedRepresentation;
- (void)addChild:(id)a3;
- (void)recursivlyAddDescriptionToString:(id)a3;
- (void)recursivlyAddTrackedParagraphsToArray:(id)a3;
- (void)recursivlySortCheckedItemsToBottom;
@end

@implementation ICTrackedParagraphTreeNode

+ (id)nodeFromTrackedParagraph:(id)a3 textView:(id)a4
{
  v4 = a3;
  v5 = objc_alloc_init(ICTrackedParagraphTreeNode);
  [(ICTrackedParagraphTreeNode *)v5 setTrackedParagraph:v4];
  v6 = [v4 paragraph];
  -[ICTrackedParagraphTreeNode setIndent:](v5, "setIndent:", [v6 indent]);

  v7 = [v4 paragraph];

  v8 = [v7 todo];
  -[ICTrackedParagraphTreeNode setChecked:](v5, "setChecked:", [v8 done]);

  return v5;
}

+ (id)placeholderNodeWithIndentation:(unint64_t)a3
{
  v4 = objc_alloc_init(ICTrackedParagraphTreeNode);
  [(ICTrackedParagraphTreeNode *)v4 setIndent:a3];

  return v4;
}

- (void)addChild:(id)a3
{
  v4 = a3;
  v5 = [(ICTrackedParagraphTreeNode *)self children];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(ICTrackedParagraphTreeNode *)self setChildren:v6];
  }

  [v4 setParent:self];
  v7 = [(ICTrackedParagraphTreeNode *)self children];
  [v7 addObject:v4];
}

- (void)recursivlySortCheckedItemsToBottom
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [(ICTrackedParagraphTreeNode *)self children];
  if ([v2 count] >= 2)
  {
    v3 = [v2 ic_objectsPassingTest:&__block_literal_global_214];
    [v2 removeObjectsInArray:v3];
    [v2 addObjectsFromArray:v3];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) recursivlySortCheckedItemsToBottom];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)linerizedRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(ICTrackedParagraphTreeNode *)self recursivlyAddTrackedParagraphsToArray:v3];

  return v3;
}

- (void)recursivlyAddTrackedParagraphsToArray:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICTrackedParagraphTreeNode *)self trackedParagraph];
  [v4 ic_addNonNilObject:v5];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(ICTrackedParagraphTreeNode *)self children];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) recursivlyAddTrackedParagraphsToArray:v4];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (NSString)recurisiveDescription
{
  v3 = [&stru_282757698 mutableCopy];
  [(ICTrackedParagraphTreeNode *)self recursivlyAddDescriptionToString:v3];

  return v3;
}

- (void)recursivlyAddDescriptionToString:(id)a3
{
  v4 = a3;
  v5 = [(ICTrackedParagraphTreeNode *)self description];
  [v4 appendString:v5];

  v6 = [(ICTrackedParagraphTreeNode *)self children];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__ICTrackedParagraphTreeNode_recursivlyAddDescriptionToString___block_invoke;
  v8[3] = &unk_2781AEFF0;
  v9 = v4;
  v7 = v4;
  [v6 enumerateObjectsUsingBlock:v8];
}

- (id)description
{
  v3 = [&stru_282757698 mutableCopy];
  if ([(ICTrackedParagraphTreeNode *)self indent]>= 1)
  {
    v4 = 0;
    do
    {
      [v3 appendString:@"\t"];
      ++v4;
    }

    while ([(ICTrackedParagraphTreeNode *)self indent]> v4);
  }

  v5 = [(ICTrackedParagraphTreeNode *)self trackedParagraph];

  if (v5)
  {
    v6 = [(ICTrackedParagraphTreeNode *)self string];
    [v3 appendString:v6];
  }

  else
  {
    [v3 appendFormat:@"[placeholder(%d)]\n", -[ICTrackedParagraphTreeNode indent](self, "indent")];
  }

  return v3;
}

- (ICTrackedParagraphTreeNode)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end
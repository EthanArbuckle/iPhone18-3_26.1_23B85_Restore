@interface ICTrackedParagraphTreeNode
+ (id)nodeFromTrackedParagraph:(id)paragraph textView:(id)view;
+ (id)placeholderNodeWithIndentation:(unint64_t)indentation;
- (ICTrackedParagraphTreeNode)parent;
- (NSString)recurisiveDescription;
- (id)description;
- (id)linerizedRepresentation;
- (void)addChild:(id)child;
- (void)recursivlyAddDescriptionToString:(id)string;
- (void)recursivlyAddTrackedParagraphsToArray:(id)array;
- (void)recursivlySortCheckedItemsToBottom;
@end

@implementation ICTrackedParagraphTreeNode

+ (id)nodeFromTrackedParagraph:(id)paragraph textView:(id)view
{
  paragraphCopy = paragraph;
  v5 = objc_alloc_init(ICTrackedParagraphTreeNode);
  [(ICTrackedParagraphTreeNode *)v5 setTrackedParagraph:paragraphCopy];
  paragraph = [paragraphCopy paragraph];
  -[ICTrackedParagraphTreeNode setIndent:](v5, "setIndent:", [paragraph indent]);

  paragraph2 = [paragraphCopy paragraph];

  todo = [paragraph2 todo];
  -[ICTrackedParagraphTreeNode setChecked:](v5, "setChecked:", [todo done]);

  return v5;
}

+ (id)placeholderNodeWithIndentation:(unint64_t)indentation
{
  v4 = objc_alloc_init(ICTrackedParagraphTreeNode);
  [(ICTrackedParagraphTreeNode *)v4 setIndent:indentation];

  return v4;
}

- (void)addChild:(id)child
{
  childCopy = child;
  children = [(ICTrackedParagraphTreeNode *)self children];

  if (!children)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(ICTrackedParagraphTreeNode *)self setChildren:v6];
  }

  [childCopy setParent:self];
  children2 = [(ICTrackedParagraphTreeNode *)self children];
  [children2 addObject:childCopy];
}

- (void)recursivlySortCheckedItemsToBottom
{
  v14 = *MEMORY[0x277D85DE8];
  children = [(ICTrackedParagraphTreeNode *)self children];
  if ([children count] >= 2)
  {
    v3 = [children ic_objectsPassingTest:&__block_literal_global_214];
    [children removeObjectsInArray:v3];
    [children addObjectsFromArray:v3];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = children;
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

- (void)recursivlyAddTrackedParagraphsToArray:(id)array
{
  v16 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  trackedParagraph = [(ICTrackedParagraphTreeNode *)self trackedParagraph];
  [arrayCopy ic_addNonNilObject:trackedParagraph];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  children = [(ICTrackedParagraphTreeNode *)self children];
  v7 = [children countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(children);
        }

        [*(*(&v11 + 1) + 8 * v10++) recursivlyAddTrackedParagraphsToArray:arrayCopy];
      }

      while (v8 != v10);
      v8 = [children countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)recursivlyAddDescriptionToString:(id)string
{
  stringCopy = string;
  v5 = [(ICTrackedParagraphTreeNode *)self description];
  [stringCopy appendString:v5];

  children = [(ICTrackedParagraphTreeNode *)self children];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__ICTrackedParagraphTreeNode_recursivlyAddDescriptionToString___block_invoke;
  v8[3] = &unk_2781AEFF0;
  v9 = stringCopy;
  v7 = stringCopy;
  [children enumerateObjectsUsingBlock:v8];
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

  trackedParagraph = [(ICTrackedParagraphTreeNode *)self trackedParagraph];

  if (trackedParagraph)
  {
    string = [(ICTrackedParagraphTreeNode *)self string];
    [v3 appendString:string];
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
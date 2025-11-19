@interface ICTTTextContentStorage
- (BOOL)canCollapseSectionsInRange:(_NSRange)a3;
- (BOOL)canExpandSectionsInRange:(_NSRange)a3;
- (BOOL)isUUIDHidden:(id)a3;
- (ICTTTextContentStorage)init;
- (ICTTTextContentStorage)initWithTextStorage:(id)a3 outlineState:(id)a4;
- (void)addTextLayoutManager:(id)a3;
- (void)collapseAllSections;
- (void)dealloc;
- (void)expandAllSections;
- (void)removeTextLayoutManager:(id)a3;
- (void)setExpanded:(BOOL)a3 forSectionsInRange:(_NSRange)a4;
@end

@implementation ICTTTextContentStorage

- (ICTTTextContentStorage)init
{
  v7.receiver = self;
  v7.super_class = ICTTTextContentStorage;
  v2 = [(ICTTTextContentStorage *)&v7 init];
  if (v2)
  {
    v3 = [ICTTTextStorage alloc];
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v5 = [(ICTTTextStorage *)v3 initWithData:0 replicaID:v4];
    [(ICTTTextContentStorage *)v2 setTextStorage:v5];
  }

  return v2;
}

- (ICTTTextContentStorage)initWithTextStorage:(id)a3 outlineState:(id)a4
{
  v6 = a4;
  v17.receiver = self;
  v17.super_class = ICTTTextContentStorage;
  v7 = a3;
  v8 = [(ICTTTextContentStorage *)&v17 init];
  [(ICTTTextContentStorage *)v8 setTextStorage:v7, v17.receiver, v17.super_class];

  [(ICTTTextContentStorage *)v8 setIncludesTextListMarkers:0];
  if (ICInternalSettingsIsCollapsibleSectionsEnabled())
  {
    v9 = [ICOutlineController alloc];
    v10 = [(ICTTTextContentStorage *)v8 textStorage];
    v11 = [v6 collapsedUUIDs];
    v12 = [(ICOutlineController *)v9 initWithTextStorage:v10 collapsedUUIDs:v11 asynchronous:1];
    outlineController = v8->_outlineController;
    v8->_outlineController = v12;

    v14 = v8->_outlineController;
    v15 = [(ICTTTextContentStorage *)v8 textStorage];
    [v15 setOutlineController:v14];
  }

  return v8;
}

- (void)dealloc
{
  outlineController = self->_outlineController;
  self->_outlineController = 0;

  [(ICTTTextContentStorage *)self setTextStorage:0];
  v4.receiver = self;
  v4.super_class = ICTTTextContentStorage;
  [(ICTTTextContentStorage *)&v4 dealloc];
}

- (void)addTextLayoutManager:(id)a3
{
  v4 = a3;
  v5 = [(ICTTTextContentStorage *)self textStorage];
  [v5 addTextLayoutManager:v4];

  v6.receiver = self;
  v6.super_class = ICTTTextContentStorage;
  [(ICTTTextContentStorage *)&v6 addTextLayoutManager:v4];
}

- (void)removeTextLayoutManager:(id)a3
{
  v4 = a3;
  v5 = [(ICTTTextContentStorage *)self textStorage];
  [v5 removeTextLayoutManager:v4];

  v6.receiver = self;
  v6.super_class = ICTTTextContentStorage;
  [(ICTTTextContentStorage *)&v6 removeTextLayoutManager:v4];
}

- (BOOL)isUUIDHidden:(id)a3
{
  v4 = a3;
  v5 = [(ICTTTextContentStorage *)self outlineController];
  v6 = [v5 isUUIDHidden:v4];

  return v6;
}

- (BOOL)canExpandSectionsInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(ICTTTextContentStorage *)self outlineController];
  v7 = [(ICTTTextContentStorage *)self textStorage];
  v8 = [v7 paragraphUUIDsInRange:{location, length}];
  LOBYTE(location) = [v6 canExpandAnyUUIDs:v8];

  return location;
}

- (BOOL)canCollapseSectionsInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(ICTTTextContentStorage *)self outlineController];
  v7 = [(ICTTTextContentStorage *)self textStorage];
  v8 = [v7 paragraphUUIDsInRange:{location, length}];
  LOBYTE(location) = [v6 canCollapseAnyUUIDs:v8];

  return location;
}

- (void)setExpanded:(BOOL)a3 forSectionsInRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  v8 = [(ICTTTextContentStorage *)self textStorage];
  v12 = [v8 paragraphUUIDsInRange:{location, length}];

  v9 = [(ICTTTextContentStorage *)self outlineController];
  v10 = v9;
  if (v6)
  {
    [v9 expandUUIDs:v12];
  }

  else
  {
    [v9 collapseUUIDs:v12];
  }

  v11 = [(ICTTTextContentStorage *)self outlineController];
  [v11 collapsibleSectionAffordanceUsedForUUIDs:v12];
}

- (void)expandAllSections
{
  v2 = [(ICTTTextContentStorage *)self outlineController];
  [v2 expandAll];
}

- (void)collapseAllSections
{
  v2 = [(ICTTTextContentStorage *)self outlineController];
  [v2 collapseAll];
}

@end
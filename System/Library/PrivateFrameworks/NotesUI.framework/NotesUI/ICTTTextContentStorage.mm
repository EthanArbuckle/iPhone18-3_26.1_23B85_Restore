@interface ICTTTextContentStorage
- (BOOL)canCollapseSectionsInRange:(_NSRange)range;
- (BOOL)canExpandSectionsInRange:(_NSRange)range;
- (BOOL)isUUIDHidden:(id)hidden;
- (ICTTTextContentStorage)init;
- (ICTTTextContentStorage)initWithTextStorage:(id)storage outlineState:(id)state;
- (void)addTextLayoutManager:(id)manager;
- (void)collapseAllSections;
- (void)dealloc;
- (void)expandAllSections;
- (void)removeTextLayoutManager:(id)manager;
- (void)setExpanded:(BOOL)expanded forSectionsInRange:(_NSRange)range;
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
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v5 = [(ICTTTextStorage *)v3 initWithData:0 replicaID:uUID];
    [(ICTTTextContentStorage *)v2 setTextStorage:v5];
  }

  return v2;
}

- (ICTTTextContentStorage)initWithTextStorage:(id)storage outlineState:(id)state
{
  stateCopy = state;
  v17.receiver = self;
  v17.super_class = ICTTTextContentStorage;
  storageCopy = storage;
  v8 = [(ICTTTextContentStorage *)&v17 init];
  [(ICTTTextContentStorage *)v8 setTextStorage:storageCopy, v17.receiver, v17.super_class];

  [(ICTTTextContentStorage *)v8 setIncludesTextListMarkers:0];
  if (ICInternalSettingsIsCollapsibleSectionsEnabled())
  {
    v9 = [ICOutlineController alloc];
    textStorage = [(ICTTTextContentStorage *)v8 textStorage];
    collapsedUUIDs = [stateCopy collapsedUUIDs];
    v12 = [(ICOutlineController *)v9 initWithTextStorage:textStorage collapsedUUIDs:collapsedUUIDs asynchronous:1];
    outlineController = v8->_outlineController;
    v8->_outlineController = v12;

    v14 = v8->_outlineController;
    textStorage2 = [(ICTTTextContentStorage *)v8 textStorage];
    [textStorage2 setOutlineController:v14];
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

- (void)addTextLayoutManager:(id)manager
{
  managerCopy = manager;
  textStorage = [(ICTTTextContentStorage *)self textStorage];
  [textStorage addTextLayoutManager:managerCopy];

  v6.receiver = self;
  v6.super_class = ICTTTextContentStorage;
  [(ICTTTextContentStorage *)&v6 addTextLayoutManager:managerCopy];
}

- (void)removeTextLayoutManager:(id)manager
{
  managerCopy = manager;
  textStorage = [(ICTTTextContentStorage *)self textStorage];
  [textStorage removeTextLayoutManager:managerCopy];

  v6.receiver = self;
  v6.super_class = ICTTTextContentStorage;
  [(ICTTTextContentStorage *)&v6 removeTextLayoutManager:managerCopy];
}

- (BOOL)isUUIDHidden:(id)hidden
{
  hiddenCopy = hidden;
  outlineController = [(ICTTTextContentStorage *)self outlineController];
  v6 = [outlineController isUUIDHidden:hiddenCopy];

  return v6;
}

- (BOOL)canExpandSectionsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  outlineController = [(ICTTTextContentStorage *)self outlineController];
  textStorage = [(ICTTTextContentStorage *)self textStorage];
  v8 = [textStorage paragraphUUIDsInRange:{location, length}];
  LOBYTE(location) = [outlineController canExpandAnyUUIDs:v8];

  return location;
}

- (BOOL)canCollapseSectionsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  outlineController = [(ICTTTextContentStorage *)self outlineController];
  textStorage = [(ICTTTextContentStorage *)self textStorage];
  v8 = [textStorage paragraphUUIDsInRange:{location, length}];
  LOBYTE(location) = [outlineController canCollapseAnyUUIDs:v8];

  return location;
}

- (void)setExpanded:(BOOL)expanded forSectionsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  expandedCopy = expanded;
  textStorage = [(ICTTTextContentStorage *)self textStorage];
  v12 = [textStorage paragraphUUIDsInRange:{location, length}];

  outlineController = [(ICTTTextContentStorage *)self outlineController];
  v10 = outlineController;
  if (expandedCopy)
  {
    [outlineController expandUUIDs:v12];
  }

  else
  {
    [outlineController collapseUUIDs:v12];
  }

  outlineController2 = [(ICTTTextContentStorage *)self outlineController];
  [outlineController2 collapsibleSectionAffordanceUsedForUUIDs:v12];
}

- (void)expandAllSections
{
  outlineController = [(ICTTTextContentStorage *)self outlineController];
  [outlineController expandAll];
}

- (void)collapseAllSections
{
  outlineController = [(ICTTTextContentStorage *)self outlineController];
  [outlineController collapseAll];
}

@end
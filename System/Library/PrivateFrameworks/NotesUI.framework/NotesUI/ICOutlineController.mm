@interface ICOutlineController
- (BOOL)canCollapseAnyUUIDs:(id)ds;
- (BOOL)canExpandAnyUUIDs:(id)ds;
- (BOOL)isAsynchronous;
- (BOOL)isUUIDCollapsed:(id)collapsed;
- (BOOL)isUUIDCollapsible:(id)collapsible;
- (BOOL)isUUIDHidden:(id)hidden;
- (BOOL)toggleCollapsedAtRange:(_NSRange)range;
- (ICOutlineController)initWithTextStorage:(id)storage collapsedUUIDs:(id)ds asynchronous:(BOOL)asynchronous;
- (ICTTTextStorage)textStorage;
- (NSArray)invisibleRangeValues;
- (NSArray)rangesValuesContainingCollapsedRanges;
- (NSArray)rangesValuesContainingExpandedRanges;
- (NSArray)visibleRangeValues;
- (NSSet)collapsedUUIDs;
- (_NSRange)descendantRangeForUUID:(id)d;
- (_NSRange)rangeForUUID:(id)d;
- (_NSRange)visibleRange;
- (id)ancestorsForUUID:(id)d;
- (id)closestVisibleAncestorForUUID:(id)d;
- (id)descendantsForUUID:(id)d;
- (int64_t)collapsibleSectionAffordanceUsages;
- (void)collapseAll;
- (void)collapseUUIDs:(id)ds;
- (void)collapsibleSectionAffordanceUsedForUUIDs:(id)ds;
- (void)expandAll;
- (void)expandAncestorsOfRange:(_NSRange)range;
- (void)expandUUIDs:(id)ds;
- (void)requestUpdate;
- (void)resetCollapsibleSectionAffordanceUsages;
- (void)setCollapsedUUIDs:(id)ds;
- (void)setIsAsynchronous:(BOOL)asynchronous;
- (void)toggleUUIDCollapsed:(id)collapsed;
@end

@implementation ICOutlineController

- (NSSet)collapsedUUIDs
{
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  collapsedUUIDs = [outlineControllerObject collapsedUUIDs];

  return collapsedUUIDs;
}

- (ICOutlineController)initWithTextStorage:(id)storage collapsedUUIDs:(id)ds asynchronous:(BOOL)asynchronous
{
  asynchronousCopy = asynchronous;
  storageCopy = storage;
  dsCopy = ds;
  v14.receiver = self;
  v14.super_class = ICOutlineController;
  v10 = [(ICOutlineController *)&v14 init];
  if (v10)
  {
    v11 = [[OutlineController alloc] initWithTextStorage:storageCopy collapsedUUIDs:dsCopy asynchronous:asynchronousCopy];
    outlineControllerObject = v10->_outlineControllerObject;
    v10->_outlineControllerObject = v11;
  }

  return v10;
}

- (ICTTTextStorage)textStorage
{
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  textStorage = [outlineControllerObject textStorage];

  return textStorage;
}

- (BOOL)isAsynchronous
{
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  isAsynchronous = [outlineControllerObject isAsynchronous];

  return isAsynchronous;
}

- (void)setIsAsynchronous:(BOOL)asynchronous
{
  asynchronousCopy = asynchronous;
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  [outlineControllerObject setIsAsynchronous:asynchronousCopy];
}

- (void)setCollapsedUUIDs:(id)ds
{
  dsCopy = ds;
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  [outlineControllerObject setCollapsedUUIDs:dsCopy];
}

- (int64_t)collapsibleSectionAffordanceUsages
{
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  interactedUUIDs = [outlineControllerObject interactedUUIDs];
  v4 = [interactedUUIDs count];

  return v4;
}

- (_NSRange)visibleRange
{
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  visibleRange = [outlineControllerObject visibleRange];
  v5 = v4;

  v6 = visibleRange;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (NSArray)visibleRangeValues
{
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  visibleRangeValues = [outlineControllerObject visibleRangeValues];

  return visibleRangeValues;
}

- (NSArray)invisibleRangeValues
{
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  invisibleRangeValues = [outlineControllerObject invisibleRangeValues];

  return invisibleRangeValues;
}

- (NSArray)rangesValuesContainingCollapsedRanges
{
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  rangesValuesContainingCollapsedRanges = [outlineControllerObject rangesValuesContainingCollapsedRanges];

  return rangesValuesContainingCollapsedRanges;
}

- (NSArray)rangesValuesContainingExpandedRanges
{
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  rangesValuesContainingExpandedRanges = [outlineControllerObject rangesValuesContainingExpandedRanges];

  return rangesValuesContainingExpandedRanges;
}

- (BOOL)toggleCollapsedAtRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  LOBYTE(length) = [outlineControllerObject toggleCollapsedAtRange:{location, length}];

  return length;
}

- (void)requestUpdate
{
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  [outlineControllerObject requestUpdate];
}

- (BOOL)canCollapseAnyUUIDs:(id)ds
{
  dsCopy = ds;
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  v6 = [outlineControllerObject canCollapseAnyUUIDs:dsCopy];

  return v6;
}

- (BOOL)isUUIDCollapsible:(id)collapsible
{
  collapsibleCopy = collapsible;
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  v6 = [outlineControllerObject isUUIDCollapsible:collapsibleCopy];

  return v6;
}

- (BOOL)isUUIDCollapsed:(id)collapsed
{
  collapsedCopy = collapsed;
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  v6 = [outlineControllerObject isUUIDCollapsed:collapsedCopy];

  return v6;
}

- (void)collapseUUIDs:(id)ds
{
  dsCopy = ds;
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  [outlineControllerObject collapseUUIDs:dsCopy];
}

- (void)toggleUUIDCollapsed:(id)collapsed
{
  collapsedCopy = collapsed;
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  [outlineControllerObject toggleUUIDCollapsed:collapsedCopy];
}

- (void)collapseAll
{
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  [outlineControllerObject collapseAll];
}

- (BOOL)canExpandAnyUUIDs:(id)ds
{
  dsCopy = ds;
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  v6 = [outlineControllerObject canExpandAnyUUIDs:dsCopy];

  return v6;
}

- (void)expandUUIDs:(id)ds
{
  dsCopy = ds;
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  [outlineControllerObject expandUUIDs:dsCopy];
}

- (void)expandAncestorsOfRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  [outlineControllerObject expandAncestorsOfRange:{location, length}];
}

- (void)expandAll
{
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  [outlineControllerObject expandAll];
}

- (void)collapsibleSectionAffordanceUsedForUUIDs:(id)ds
{
  dsCopy = ds;
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  [outlineControllerObject collapsibleSectionAffordanceUsedForUUIDs:dsCopy];
}

- (void)resetCollapsibleSectionAffordanceUsages
{
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  [outlineControllerObject resetCollapsibleSectionAffordanceUsages];
}

- (BOOL)isUUIDHidden:(id)hidden
{
  hiddenCopy = hidden;
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  v6 = [outlineControllerObject isUUIDHidden:hiddenCopy];

  return v6;
}

- (_NSRange)rangeForUUID:(id)d
{
  dCopy = d;
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  v6 = [outlineControllerObject rangeForUUID:dCopy];
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (_NSRange)descendantRangeForUUID:(id)d
{
  dCopy = d;
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  v6 = [outlineControllerObject descendantRangeForUUID:dCopy];
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (id)closestVisibleAncestorForUUID:(id)d
{
  dCopy = d;
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  v6 = [outlineControllerObject closestVisibleAncestorForUUID:dCopy];

  return v6;
}

- (id)ancestorsForUUID:(id)d
{
  dCopy = d;
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  v6 = [outlineControllerObject ancestorsForUUID:dCopy];

  return v6;
}

- (id)descendantsForUUID:(id)d
{
  dCopy = d;
  outlineControllerObject = [(ICOutlineController *)self outlineControllerObject];
  v6 = [outlineControllerObject descendantsForUUID:dCopy];

  return v6;
}

@end
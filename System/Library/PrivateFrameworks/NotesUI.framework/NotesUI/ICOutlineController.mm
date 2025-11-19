@interface ICOutlineController
- (BOOL)canCollapseAnyUUIDs:(id)a3;
- (BOOL)canExpandAnyUUIDs:(id)a3;
- (BOOL)isAsynchronous;
- (BOOL)isUUIDCollapsed:(id)a3;
- (BOOL)isUUIDCollapsible:(id)a3;
- (BOOL)isUUIDHidden:(id)a3;
- (BOOL)toggleCollapsedAtRange:(_NSRange)a3;
- (ICOutlineController)initWithTextStorage:(id)a3 collapsedUUIDs:(id)a4 asynchronous:(BOOL)a5;
- (ICTTTextStorage)textStorage;
- (NSArray)invisibleRangeValues;
- (NSArray)rangesValuesContainingCollapsedRanges;
- (NSArray)rangesValuesContainingExpandedRanges;
- (NSArray)visibleRangeValues;
- (NSSet)collapsedUUIDs;
- (_NSRange)descendantRangeForUUID:(id)a3;
- (_NSRange)rangeForUUID:(id)a3;
- (_NSRange)visibleRange;
- (id)ancestorsForUUID:(id)a3;
- (id)closestVisibleAncestorForUUID:(id)a3;
- (id)descendantsForUUID:(id)a3;
- (int64_t)collapsibleSectionAffordanceUsages;
- (void)collapseAll;
- (void)collapseUUIDs:(id)a3;
- (void)collapsibleSectionAffordanceUsedForUUIDs:(id)a3;
- (void)expandAll;
- (void)expandAncestorsOfRange:(_NSRange)a3;
- (void)expandUUIDs:(id)a3;
- (void)requestUpdate;
- (void)resetCollapsibleSectionAffordanceUsages;
- (void)setCollapsedUUIDs:(id)a3;
- (void)setIsAsynchronous:(BOOL)a3;
- (void)toggleUUIDCollapsed:(id)a3;
@end

@implementation ICOutlineController

- (NSSet)collapsedUUIDs
{
  v2 = [(ICOutlineController *)self outlineControllerObject];
  v3 = [v2 collapsedUUIDs];

  return v3;
}

- (ICOutlineController)initWithTextStorage:(id)a3 collapsedUUIDs:(id)a4 asynchronous:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = ICOutlineController;
  v10 = [(ICOutlineController *)&v14 init];
  if (v10)
  {
    v11 = [[OutlineController alloc] initWithTextStorage:v8 collapsedUUIDs:v9 asynchronous:v5];
    outlineControllerObject = v10->_outlineControllerObject;
    v10->_outlineControllerObject = v11;
  }

  return v10;
}

- (ICTTTextStorage)textStorage
{
  v2 = [(ICOutlineController *)self outlineControllerObject];
  v3 = [v2 textStorage];

  return v3;
}

- (BOOL)isAsynchronous
{
  v2 = [(ICOutlineController *)self outlineControllerObject];
  v3 = [v2 isAsynchronous];

  return v3;
}

- (void)setIsAsynchronous:(BOOL)a3
{
  v3 = a3;
  v4 = [(ICOutlineController *)self outlineControllerObject];
  [v4 setIsAsynchronous:v3];
}

- (void)setCollapsedUUIDs:(id)a3
{
  v4 = a3;
  v5 = [(ICOutlineController *)self outlineControllerObject];
  [v5 setCollapsedUUIDs:v4];
}

- (int64_t)collapsibleSectionAffordanceUsages
{
  v2 = [(ICOutlineController *)self outlineControllerObject];
  v3 = [v2 interactedUUIDs];
  v4 = [v3 count];

  return v4;
}

- (_NSRange)visibleRange
{
  v2 = [(ICOutlineController *)self outlineControllerObject];
  v3 = [v2 visibleRange];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (NSArray)visibleRangeValues
{
  v2 = [(ICOutlineController *)self outlineControllerObject];
  v3 = [v2 visibleRangeValues];

  return v3;
}

- (NSArray)invisibleRangeValues
{
  v2 = [(ICOutlineController *)self outlineControllerObject];
  v3 = [v2 invisibleRangeValues];

  return v3;
}

- (NSArray)rangesValuesContainingCollapsedRanges
{
  v2 = [(ICOutlineController *)self outlineControllerObject];
  v3 = [v2 rangesValuesContainingCollapsedRanges];

  return v3;
}

- (NSArray)rangesValuesContainingExpandedRanges
{
  v2 = [(ICOutlineController *)self outlineControllerObject];
  v3 = [v2 rangesValuesContainingExpandedRanges];

  return v3;
}

- (BOOL)toggleCollapsedAtRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(ICOutlineController *)self outlineControllerObject];
  LOBYTE(length) = [v5 toggleCollapsedAtRange:{location, length}];

  return length;
}

- (void)requestUpdate
{
  v2 = [(ICOutlineController *)self outlineControllerObject];
  [v2 requestUpdate];
}

- (BOOL)canCollapseAnyUUIDs:(id)a3
{
  v4 = a3;
  v5 = [(ICOutlineController *)self outlineControllerObject];
  v6 = [v5 canCollapseAnyUUIDs:v4];

  return v6;
}

- (BOOL)isUUIDCollapsible:(id)a3
{
  v4 = a3;
  v5 = [(ICOutlineController *)self outlineControllerObject];
  v6 = [v5 isUUIDCollapsible:v4];

  return v6;
}

- (BOOL)isUUIDCollapsed:(id)a3
{
  v4 = a3;
  v5 = [(ICOutlineController *)self outlineControllerObject];
  v6 = [v5 isUUIDCollapsed:v4];

  return v6;
}

- (void)collapseUUIDs:(id)a3
{
  v4 = a3;
  v5 = [(ICOutlineController *)self outlineControllerObject];
  [v5 collapseUUIDs:v4];
}

- (void)toggleUUIDCollapsed:(id)a3
{
  v4 = a3;
  v5 = [(ICOutlineController *)self outlineControllerObject];
  [v5 toggleUUIDCollapsed:v4];
}

- (void)collapseAll
{
  v2 = [(ICOutlineController *)self outlineControllerObject];
  [v2 collapseAll];
}

- (BOOL)canExpandAnyUUIDs:(id)a3
{
  v4 = a3;
  v5 = [(ICOutlineController *)self outlineControllerObject];
  v6 = [v5 canExpandAnyUUIDs:v4];

  return v6;
}

- (void)expandUUIDs:(id)a3
{
  v4 = a3;
  v5 = [(ICOutlineController *)self outlineControllerObject];
  [v5 expandUUIDs:v4];
}

- (void)expandAncestorsOfRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(ICOutlineController *)self outlineControllerObject];
  [v5 expandAncestorsOfRange:{location, length}];
}

- (void)expandAll
{
  v2 = [(ICOutlineController *)self outlineControllerObject];
  [v2 expandAll];
}

- (void)collapsibleSectionAffordanceUsedForUUIDs:(id)a3
{
  v4 = a3;
  v5 = [(ICOutlineController *)self outlineControllerObject];
  [v5 collapsibleSectionAffordanceUsedForUUIDs:v4];
}

- (void)resetCollapsibleSectionAffordanceUsages
{
  v2 = [(ICOutlineController *)self outlineControllerObject];
  [v2 resetCollapsibleSectionAffordanceUsages];
}

- (BOOL)isUUIDHidden:(id)a3
{
  v4 = a3;
  v5 = [(ICOutlineController *)self outlineControllerObject];
  v6 = [v5 isUUIDHidden:v4];

  return v6;
}

- (_NSRange)rangeForUUID:(id)a3
{
  v4 = a3;
  v5 = [(ICOutlineController *)self outlineControllerObject];
  v6 = [v5 rangeForUUID:v4];
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (_NSRange)descendantRangeForUUID:(id)a3
{
  v4 = a3;
  v5 = [(ICOutlineController *)self outlineControllerObject];
  v6 = [v5 descendantRangeForUUID:v4];
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (id)closestVisibleAncestorForUUID:(id)a3
{
  v4 = a3;
  v5 = [(ICOutlineController *)self outlineControllerObject];
  v6 = [v5 closestVisibleAncestorForUUID:v4];

  return v6;
}

- (id)ancestorsForUUID:(id)a3
{
  v4 = a3;
  v5 = [(ICOutlineController *)self outlineControllerObject];
  v6 = [v5 ancestorsForUUID:v4];

  return v6;
}

- (id)descendantsForUUID:(id)a3
{
  v4 = a3;
  v5 = [(ICOutlineController *)self outlineControllerObject];
  v6 = [v5 descendantsForUUID:v4];

  return v6;
}

@end
@interface ICAuthorHighlightsUpdater
- (BOOL)hasHighlights;
- (BOOL)showsCollaboratorStatuses;
- (BOOL)updatesVisibleRangesOnly;
- (ICAuthorHighlightsUpdater)init;
- (ICAuthorHighlightsUpdater)initWithAuthorHighlightsController:(id)controller textLayoutManager:(id)manager;
- (ICSearchResultRegexMatchFinder)searchHighlightRegexFinder;
- (ICTTTextEditFilter)filter;
- (NSValue)focusedRangeValue;
- (NSValue)highlightedRangeValue;
- (double)highlightedValue;
- (void)flashHighlightsForFilter:(id)filter;
- (void)flashHighlightsForRanges:(id)ranges inTextStorage:(id)storage;
- (void)noteShowsCollaboratorCursorsDidChange:(id)change;
- (void)scheduleUpdateAnimated:(BOOL)animated;
- (void)scheduleUpdateAnimated:(BOOL)animated force:(BOOL)force;
- (void)setFilter:(id)filter;
- (void)setFocusedRangeValue:(id)value;
- (void)setHighlightedValue:(double)value;
- (void)setSearchHighlightRegexFinder:(id)finder;
- (void)setUpdatesVisibleRangesOnly:(BOOL)only;
- (void)updateAnimated:(BOOL)animated;
- (void)updateAnimated:(BOOL)animated force:(BOOL)force;
@end

@implementation ICAuthorHighlightsUpdater

- (ICAuthorHighlightsUpdater)initWithAuthorHighlightsController:(id)controller textLayoutManager:(id)manager
{
  controllerCopy = controller;
  managerCopy = manager;
  return AuthorHighlightsUpdater.init(authorHighlightsController:textLayoutManager:)(controllerCopy, manager);
}

- (void)setSearchHighlightRegexFinder:(id)finder
{
  v5 = OBJC_IVAR___ICAuthorHighlightsUpdater_searchHighlightRegexFinder;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = finder;
  finderCopy = finder;
}

- (BOOL)hasHighlights
{
  selfCopy = self;
  v3 = AuthorHighlightsUpdater.hasHighlights.getter();

  return v3 & 1;
}

- (double)highlightedValue
{
  v3 = OBJC_IVAR___ICAuthorHighlightsUpdater_highlightedValue;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setHighlightedValue:(double)value
{
  v5 = OBJC_IVAR___ICAuthorHighlightsUpdater_highlightedValue;
  swift_beginAccess();
  *(&self->super.isa + v5) = value;
}

- (ICTTTextEditFilter)filter
{
  v3 = OBJC_IVAR___ICAuthorHighlightsUpdater_filter;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setFilter:(id)filter
{
  v5 = OBJC_IVAR___ICAuthorHighlightsUpdater_filter;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = filter;
  filterCopy = filter;
  selfCopy = self;

  v9 = sub_21547F9F8();
  v10 = *(&self->super.isa + v5);
  [v9 setFilter_];
}

- (BOOL)showsCollaboratorStatuses
{
  selfCopy = self;
  v3 = AuthorHighlightsUpdater.showsCollaboratorStatuses.getter();

  return v3 & 1;
}

- (ICSearchResultRegexMatchFinder)searchHighlightRegexFinder
{
  v3 = OBJC_IVAR___ICAuthorHighlightsUpdater_searchHighlightRegexFinder;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)scheduleUpdateAnimated:(BOOL)animated
{
  v4 = *(&self->super.isa + OBJC_IVAR___ICAuthorHighlightsUpdater_forceNextUpdate);
  selfCopy = self;
  AuthorHighlightsUpdater.scheduleUpdate(animated:force:)(animated, v4);
}

- (void)scheduleUpdateAnimated:(BOOL)animated force:(BOOL)force
{
  selfCopy = self;
  AuthorHighlightsUpdater.scheduleUpdate(animated:force:)(animated, force);
}

- (BOOL)updatesVisibleRangesOnly
{
  v3 = OBJC_IVAR___ICAuthorHighlightsUpdater_updatesVisibleRangesOnly;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setUpdatesVisibleRangesOnly:(BOOL)only
{
  v5 = OBJC_IVAR___ICAuthorHighlightsUpdater_updatesVisibleRangesOnly;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = only;
  selfCopy = self;
  sub_215482AA4(v6);
}

- (void)updateAnimated:(BOOL)animated
{
  v4 = *(&self->super.isa + OBJC_IVAR___ICAuthorHighlightsUpdater_forceNextUpdate);
  selfCopy = self;
  AuthorHighlightsUpdater.update(animated:force:)(animated, v4);
}

- (void)updateAnimated:(BOOL)animated force:(BOOL)force
{
  selfCopy = self;
  AuthorHighlightsUpdater.update(animated:force:)(animated, force);
}

- (void)flashHighlightsForRanges:(id)ranges inTextStorage:(id)storage
{
  type metadata accessor for _NSRange(0);
  v6 = sub_2154A1F4C();
  storageCopy = storage;
  selfCopy = self;
  AuthorHighlightsUpdater.flashHighlights(for:in:)(v6, storageCopy);
}

- (void)flashHighlightsForFilter:(id)filter
{
  filterCopy = filter;
  selfCopy = self;
  AuthorHighlightsUpdater.flashHighlights(for:)(filterCopy);
}

- (void)noteShowsCollaboratorCursorsDidChange:(id)change
{
  v4 = sub_21549E19C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E16C();
  selfCopy = self;
  sub_2154871AC();

  (*(v5 + 8))(v7, v4);
}

- (ICAuthorHighlightsUpdater)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSValue)focusedRangeValue
{
  v2 = self + OBJC_IVAR___ICAuthorHighlightsUpdater_focusedRange;
  swift_beginAccess();
  valueWithRange_ = 0;
  if ((v2[16] & 1) == 0)
  {
    valueWithRange_ = [objc_opt_self() valueWithRange_];
  }

  return valueWithRange_;
}

- (void)setFocusedRangeValue:(id)value
{
  selfCopy = self;
  if (value)
  {
    rangeValue = [value rangeValue];
    v7 = v6;
  }

  else
  {
    rangeValue = 0;
    v7 = 0;
  }

  v8 = value == 0;
  v9 = selfCopy + OBJC_IVAR___ICAuthorHighlightsUpdater_focusedRange;
  swift_beginAccess();
  *v9 = rangeValue;
  *(v9 + 1) = v7;
  v9[16] = v8;
}

- (NSValue)highlightedRangeValue
{
  selfCopy = self;
  v3 = sub_215486514();
  if (v5)
  {
    valueWithRange_ = 0;
  }

  else
  {
    valueWithRange_ = [objc_opt_self() valueWithRange_];
  }

  return valueWithRange_;
}

@end
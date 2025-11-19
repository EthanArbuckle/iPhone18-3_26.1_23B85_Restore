@interface ICAuthorHighlightsUpdater
- (BOOL)hasHighlights;
- (BOOL)showsCollaboratorStatuses;
- (BOOL)updatesVisibleRangesOnly;
- (ICAuthorHighlightsUpdater)init;
- (ICAuthorHighlightsUpdater)initWithAuthorHighlightsController:(id)a3 textLayoutManager:(id)a4;
- (ICSearchResultRegexMatchFinder)searchHighlightRegexFinder;
- (ICTTTextEditFilter)filter;
- (NSValue)focusedRangeValue;
- (NSValue)highlightedRangeValue;
- (double)highlightedValue;
- (void)flashHighlightsForFilter:(id)a3;
- (void)flashHighlightsForRanges:(id)a3 inTextStorage:(id)a4;
- (void)noteShowsCollaboratorCursorsDidChange:(id)a3;
- (void)scheduleUpdateAnimated:(BOOL)a3;
- (void)scheduleUpdateAnimated:(BOOL)a3 force:(BOOL)a4;
- (void)setFilter:(id)a3;
- (void)setFocusedRangeValue:(id)a3;
- (void)setHighlightedValue:(double)a3;
- (void)setSearchHighlightRegexFinder:(id)a3;
- (void)setUpdatesVisibleRangesOnly:(BOOL)a3;
- (void)updateAnimated:(BOOL)a3;
- (void)updateAnimated:(BOOL)a3 force:(BOOL)a4;
@end

@implementation ICAuthorHighlightsUpdater

- (ICAuthorHighlightsUpdater)initWithAuthorHighlightsController:(id)a3 textLayoutManager:(id)a4
{
  v5 = a3;
  v6 = a4;
  return AuthorHighlightsUpdater.init(authorHighlightsController:textLayoutManager:)(v5, a4);
}

- (void)setSearchHighlightRegexFinder:(id)a3
{
  v5 = OBJC_IVAR___ICAuthorHighlightsUpdater_searchHighlightRegexFinder;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (BOOL)hasHighlights
{
  v2 = self;
  v3 = AuthorHighlightsUpdater.hasHighlights.getter();

  return v3 & 1;
}

- (double)highlightedValue
{
  v3 = OBJC_IVAR___ICAuthorHighlightsUpdater_highlightedValue;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setHighlightedValue:(double)a3
{
  v5 = OBJC_IVAR___ICAuthorHighlightsUpdater_highlightedValue;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (ICTTTextEditFilter)filter
{
  v3 = OBJC_IVAR___ICAuthorHighlightsUpdater_filter;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setFilter:(id)a3
{
  v5 = OBJC_IVAR___ICAuthorHighlightsUpdater_filter;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
  v8 = self;

  v9 = sub_21547F9F8();
  v10 = *(&self->super.isa + v5);
  [v9 setFilter_];
}

- (BOOL)showsCollaboratorStatuses
{
  v2 = self;
  v3 = AuthorHighlightsUpdater.showsCollaboratorStatuses.getter();

  return v3 & 1;
}

- (ICSearchResultRegexMatchFinder)searchHighlightRegexFinder
{
  v3 = OBJC_IVAR___ICAuthorHighlightsUpdater_searchHighlightRegexFinder;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)scheduleUpdateAnimated:(BOOL)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___ICAuthorHighlightsUpdater_forceNextUpdate);
  v5 = self;
  AuthorHighlightsUpdater.scheduleUpdate(animated:force:)(a3, v4);
}

- (void)scheduleUpdateAnimated:(BOOL)a3 force:(BOOL)a4
{
  v6 = self;
  AuthorHighlightsUpdater.scheduleUpdate(animated:force:)(a3, a4);
}

- (BOOL)updatesVisibleRangesOnly
{
  v3 = OBJC_IVAR___ICAuthorHighlightsUpdater_updatesVisibleRangesOnly;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setUpdatesVisibleRangesOnly:(BOOL)a3
{
  v5 = OBJC_IVAR___ICAuthorHighlightsUpdater_updatesVisibleRangesOnly;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = self;
  sub_215482AA4(v6);
}

- (void)updateAnimated:(BOOL)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___ICAuthorHighlightsUpdater_forceNextUpdate);
  v5 = self;
  AuthorHighlightsUpdater.update(animated:force:)(a3, v4);
}

- (void)updateAnimated:(BOOL)a3 force:(BOOL)a4
{
  v6 = self;
  AuthorHighlightsUpdater.update(animated:force:)(a3, a4);
}

- (void)flashHighlightsForRanges:(id)a3 inTextStorage:(id)a4
{
  type metadata accessor for _NSRange(0);
  v6 = sub_2154A1F4C();
  v7 = a4;
  v8 = self;
  AuthorHighlightsUpdater.flashHighlights(for:in:)(v6, v7);
}

- (void)flashHighlightsForFilter:(id)a3
{
  v4 = a3;
  v5 = self;
  AuthorHighlightsUpdater.flashHighlights(for:)(v4);
}

- (void)noteShowsCollaboratorCursorsDidChange:(id)a3
{
  v4 = sub_21549E19C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E16C();
  v8 = self;
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
  v3 = 0;
  if ((v2[16] & 1) == 0)
  {
    v3 = [objc_opt_self() valueWithRange_];
  }

  return v3;
}

- (void)setFocusedRangeValue:(id)a3
{
  v4 = self;
  if (a3)
  {
    v5 = [a3 rangeValue];
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3 == 0;
  v9 = v4 + OBJC_IVAR___ICAuthorHighlightsUpdater_focusedRange;
  swift_beginAccess();
  *v9 = v5;
  *(v9 + 1) = v7;
  v9[16] = v8;
}

- (NSValue)highlightedRangeValue
{
  v2 = self;
  v3 = sub_215486514();
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [objc_opt_self() valueWithRange_];
  }

  return v6;
}

@end
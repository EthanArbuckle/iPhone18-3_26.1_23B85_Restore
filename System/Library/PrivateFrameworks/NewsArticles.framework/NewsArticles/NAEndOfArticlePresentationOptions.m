@interface NAEndOfArticlePresentationOptions
- (NAEndOfArticlePresentationOptions)init;
- (NAEndOfArticlePresentationOptions)initWithSuppressMoreFromSection:(BOOL)a3 suppressMoreToReadSection:(BOOL)a4 suppressMoreFromIssueSection:(BOOL)a5 suppressRelatedSection:(BOOL)a6 suppressRecommendedReadsSection:(int64_t)a7 articleBackgroundColor:(id)a8 isIssueArticle:(BOOL)a9;
@end

@implementation NAEndOfArticlePresentationOptions

- (NAEndOfArticlePresentationOptions)initWithSuppressMoreFromSection:(BOOL)a3 suppressMoreToReadSection:(BOOL)a4 suppressMoreFromIssueSection:(BOOL)a5 suppressRelatedSection:(BOOL)a6 suppressRecommendedReadsSection:(int64_t)a7 articleBackgroundColor:(id)a8 isIssueArticle:(BOOL)a9
{
  *(&self->super.isa + OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressMoreFromSection) = a3;
  *(&self->super.isa + OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressMoreToReadSection) = a4;
  *(&self->super.isa + OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressMoreFromIssueSection) = a5;
  *(&self->super.isa + OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressRelatedSection) = a6;
  *(&self->super.isa + OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressRecommendedReadsSection) = a7;
  *(&self->super.isa + OBJC_IVAR___NAEndOfArticlePresentationOptions_articleBackgroundColor) = a8;
  *(&self->super.isa + OBJC_IVAR___NAEndOfArticlePresentationOptions_isIssueArticle) = a9;
  v12.receiver = self;
  v12.super_class = type metadata accessor for EndOfArticlePresentationOptions();
  v10 = a8;
  return [(NAEndOfArticlePresentationOptions *)&v12 init];
}

- (NAEndOfArticlePresentationOptions)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
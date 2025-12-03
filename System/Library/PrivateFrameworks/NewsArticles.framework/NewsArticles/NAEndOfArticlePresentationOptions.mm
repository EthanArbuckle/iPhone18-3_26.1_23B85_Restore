@interface NAEndOfArticlePresentationOptions
- (NAEndOfArticlePresentationOptions)init;
- (NAEndOfArticlePresentationOptions)initWithSuppressMoreFromSection:(BOOL)section suppressMoreToReadSection:(BOOL)readSection suppressMoreFromIssueSection:(BOOL)issueSection suppressRelatedSection:(BOOL)relatedSection suppressRecommendedReadsSection:(int64_t)readsSection articleBackgroundColor:(id)color isIssueArticle:(BOOL)article;
@end

@implementation NAEndOfArticlePresentationOptions

- (NAEndOfArticlePresentationOptions)initWithSuppressMoreFromSection:(BOOL)section suppressMoreToReadSection:(BOOL)readSection suppressMoreFromIssueSection:(BOOL)issueSection suppressRelatedSection:(BOOL)relatedSection suppressRecommendedReadsSection:(int64_t)readsSection articleBackgroundColor:(id)color isIssueArticle:(BOOL)article
{
  *(&self->super.isa + OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressMoreFromSection) = section;
  *(&self->super.isa + OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressMoreToReadSection) = readSection;
  *(&self->super.isa + OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressMoreFromIssueSection) = issueSection;
  *(&self->super.isa + OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressRelatedSection) = relatedSection;
  *(&self->super.isa + OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressRecommendedReadsSection) = readsSection;
  *(&self->super.isa + OBJC_IVAR___NAEndOfArticlePresentationOptions_articleBackgroundColor) = color;
  *(&self->super.isa + OBJC_IVAR___NAEndOfArticlePresentationOptions_isIssueArticle) = article;
  v12.receiver = self;
  v12.super_class = type metadata accessor for EndOfArticlePresentationOptions();
  colorCopy = color;
  return [(NAEndOfArticlePresentationOptions *)&v12 init];
}

- (NAEndOfArticlePresentationOptions)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
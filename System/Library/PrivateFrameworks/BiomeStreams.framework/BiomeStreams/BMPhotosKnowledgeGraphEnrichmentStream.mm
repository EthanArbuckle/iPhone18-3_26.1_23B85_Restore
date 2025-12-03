@interface BMPhotosKnowledgeGraphEnrichmentStream
- (BMPhotosKnowledgeGraphEnrichmentStream)init;
@end

@implementation BMPhotosKnowledgeGraphEnrichmentStream

- (BMPhotosKnowledgeGraphEnrichmentStream)init
{
  identifier = [(BMPhotosKnowledgeGraphEnrichmentStream *)self identifier];
  v4 = [(BMContentStream *)self initWithStreamIdentifier:identifier eventClass:objc_opt_class()];

  return v4;
}

@end
@interface BMPhotosKnowledgeGraphEnrichmentStream
- (BMPhotosKnowledgeGraphEnrichmentStream)init;
@end

@implementation BMPhotosKnowledgeGraphEnrichmentStream

- (BMPhotosKnowledgeGraphEnrichmentStream)init
{
  v3 = [(BMPhotosKnowledgeGraphEnrichmentStream *)self identifier];
  v4 = [(BMContentStream *)self initWithStreamIdentifier:v3 eventClass:objc_opt_class()];

  return v4;
}

@end
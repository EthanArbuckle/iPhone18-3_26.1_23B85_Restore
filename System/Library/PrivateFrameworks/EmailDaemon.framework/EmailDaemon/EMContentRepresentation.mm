@interface EMContentRepresentation
@end

@implementation EMContentRepresentation

uint64_t __125__EMContentRepresentation_EDMessagePersistence__requestRepresentationForItemWithObjectID_options_delegate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectID];
  v4 = [v2 isEqual:v3];

  return v4;
}

@end
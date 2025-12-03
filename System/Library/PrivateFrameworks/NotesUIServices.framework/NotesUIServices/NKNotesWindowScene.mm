@interface NKNotesWindowScene
- (NKNotesWindowScene)initWithSession:(id)session connectionOptions:(id)options;
@end

@implementation NKNotesWindowScene

- (NKNotesWindowScene)initWithSession:(id)session connectionOptions:(id)options
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NKNotesWindowScene();
  return [(_UIHostedWindowScene *)&v7 initWithSession:session connectionOptions:options];
}

@end
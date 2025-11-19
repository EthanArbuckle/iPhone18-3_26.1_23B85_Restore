@interface NKNotesWindowScene
- (NKNotesWindowScene)initWithSession:(id)a3 connectionOptions:(id)a4;
@end

@implementation NKNotesWindowScene

- (NKNotesWindowScene)initWithSession:(id)a3 connectionOptions:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NKNotesWindowScene();
  return [(_UIHostedWindowScene *)&v7 initWithSession:a3 connectionOptions:a4];
}

@end
@interface TranscriptionViewComposer
- (id)compose;
- (id)composeBackgroundWithView:(id)a3;
- (id)composeWithCall:(id)a3;
- (id)composeWithCall:(id)a3 createTextField:(BOOL)a4;
- (id)composeWithCall:(id)a3 createTextField:(BOOL)a4 liveReply:(BOOL)a5;
- (id)composeWithCall:(id)a3 createTextField:(BOOL)a4 liveReply:(BOOL)a5 textFieldPadding:(double)a6;
@end

@implementation TranscriptionViewComposer

- (id)composeWithCall:(id)a3
{
  v5 = a3;
  v6 = self;
  TranscriptionViewComposer.compose(with:)(a3);
  v8 = v7;

  return v8;
}

- (id)composeWithCall:(id)a3 createTextField:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  TranscriptionViewComposer.compose(with:createTextField:)(a3);
  v9 = v8;

  return v9;
}

- (id)composeWithCall:(id)a3 createTextField:(BOOL)a4 liveReply:(BOOL)a5
{
  v7 = a3;
  v8 = self;
  TranscriptionViewComposer.compose(with:createTextField:liveReply:)(a3);
  v10 = v9;

  return v10;
}

- (id)composeWithCall:(id)a3 createTextField:(BOOL)a4 liveReply:(BOOL)a5 textFieldPadding:(double)a6
{
  v8 = a3;
  v9 = self;
  TranscriptionViewComposer.compose(with:createTextField:liveReply:textFieldPadding:)(a3);
  v11 = v10;

  return v11;
}

- (id)compose
{
  v2 = self;
  TranscriptionViewComposer.compose()(v3);
  v5 = v4;

  return v5;
}

- (id)composeBackgroundWithView:(id)a3
{
  v4 = a3;
  v5 = self;
  TranscriptionViewComposer.composeBackground(with:)(v6, v4);
  v8 = v7;

  return v8;
}

@end
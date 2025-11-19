@interface CKZKWQueryResult
- (CKZKWQueryResult)initWithSearchableItem:(id)a3 inSection:(id)a4 withConversation:(id)a5;
@end

@implementation CKZKWQueryResult

- (CKZKWQueryResult)initWithSearchableItem:(id)a3 inSection:(id)a4 withConversation:(id)a5
{
  v7 = a4;
  v8 = a5;
  v15.receiver = self;
  v15.super_class = CKZKWQueryResult;
  v9 = [(CKZKWQueryResult *)&v15 init];
  if (v9)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = [v8 chat];
    v12 = [v11 guid];
    v13 = [v10 stringWithFormat:@"%@-%@", v7, v12];

    [(CKSpotlightQueryResult *)v9 setIdentifier:v13];
    [(CKSpotlightQueryResult *)v9 setConversation:v8];
  }

  return v9;
}

@end
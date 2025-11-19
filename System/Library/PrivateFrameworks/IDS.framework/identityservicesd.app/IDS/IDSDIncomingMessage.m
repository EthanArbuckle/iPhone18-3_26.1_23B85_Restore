@interface IDSDIncomingMessage
- (IDSDIncomingMessage)initWithMessage:(id)a3 fromID:(id)a4 topic:(id)a5 guid:(id)a6 isLocal:(BOOL)a7;
@end

@implementation IDSDIncomingMessage

- (IDSDIncomingMessage)initWithMessage:(id)a3 fromID:(id)a4 topic:(id)a5 guid:(id)a6 isLocal:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = IDSDIncomingMessage;
  v16 = [(IDSDIncomingMessage *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(IDSDIncomingMessage *)v16 setMessage:v12];
    [(IDSDIncomingMessage *)v17 setFromID:v13];
    [(IDSDIncomingMessage *)v17 setTopic:v14];
    [(IDSDIncomingMessage *)v17 setGuid:v15];
    [(IDSDIncomingMessage *)v17 setIsLocal:v7];
    [(IDSDIncomingMessage *)v17 setExpirationDate:0];
    [(IDSDIncomingMessage *)v17 setControlCategory:0];
  }

  return v17;
}

@end
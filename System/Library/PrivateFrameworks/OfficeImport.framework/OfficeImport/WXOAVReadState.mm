@interface WXOAVReadState
- (WXOAVReadState)initWithWXReadState:(id)a3;
- (id)wxReadState;
@end

@implementation WXOAVReadState

- (WXOAVReadState)initWithWXReadState:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 packagePart];
  v11.receiver = self;
  v11.super_class = WXOAVReadState;
  v7 = [(OAVReadState *)&v11 initWithClient:v5 packagePart:v6];

  objc_storeWeak(&v7->mWxState, v4);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  mNextVmlShapeIdToTextBoxMap = v7->mNextVmlShapeIdToTextBoxMap;
  v7->mNextVmlShapeIdToTextBoxMap = v8;

  LODWORD(v6) = v7->super.super.super.mXMLFormat;
  if (v6 != [v4 xmlFormat])
  {
    -[OCXState setupNSForXMLFormat:](v7, "setupNSForXMLFormat:", [v4 xmlFormat]);
  }

  return v7;
}

- (id)wxReadState
{
  WeakRetained = objc_loadWeakRetained(&self->mWxState);

  return WeakRetained;
}

@end
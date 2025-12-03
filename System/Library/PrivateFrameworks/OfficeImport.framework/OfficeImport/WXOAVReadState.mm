@interface WXOAVReadState
- (WXOAVReadState)initWithWXReadState:(id)state;
- (id)wxReadState;
@end

@implementation WXOAVReadState

- (WXOAVReadState)initWithWXReadState:(id)state
{
  stateCopy = state;
  v5 = objc_opt_class();
  packagePart = [stateCopy packagePart];
  v11.receiver = self;
  v11.super_class = WXOAVReadState;
  v7 = [(OAVReadState *)&v11 initWithClient:v5 packagePart:packagePart];

  objc_storeWeak(&v7->mWxState, stateCopy);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  mNextVmlShapeIdToTextBoxMap = v7->mNextVmlShapeIdToTextBoxMap;
  v7->mNextVmlShapeIdToTextBoxMap = v8;

  LODWORD(packagePart) = v7->super.super.super.mXMLFormat;
  if (packagePart != [stateCopy xmlFormat])
  {
    -[OCXState setupNSForXMLFormat:](v7, "setupNSForXMLFormat:", [stateCopy xmlFormat]);
  }

  return v7;
}

- (id)wxReadState
{
  WeakRetained = objc_loadWeakRetained(&self->mWxState);

  return WeakRetained;
}

@end
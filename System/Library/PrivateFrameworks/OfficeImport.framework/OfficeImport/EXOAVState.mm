@interface EXOAVState
- (EXOAVState)initWithEXReadState:(id)a3 packagePart:(id)a4;
- (EXReadState)exState;
@end

@implementation EXOAVState

- (EXReadState)exState
{
  WeakRetained = objc_loadWeakRetained(&self->mEXReadState);

  return WeakRetained;
}

- (EXOAVState)initWithEXReadState:(id)a3 packagePart:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v15.receiver = self;
  v15.super_class = EXOAVState;
  v9 = [(OAVReadState *)&v15 initWithClient:v8 packagePart:v7];
  v10 = objc_storeWeak(&v9->mEXReadState, v6);
  mXMLFormat = v9->super.super.super.mXMLFormat;
  v12 = v10;
  LODWORD(self) = [v6 xmlFormat];

  if (mXMLFormat != self)
  {
    WeakRetained = objc_loadWeakRetained(&v9->mEXReadState);
    -[OCXState setupNSForXMLFormat:](v9, "setupNSForXMLFormat:", [WeakRetained xmlFormat]);
  }

  return v9;
}

@end
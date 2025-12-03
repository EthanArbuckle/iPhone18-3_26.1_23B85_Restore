@interface EXOAVState
- (EXOAVState)initWithEXReadState:(id)state packagePart:(id)part;
- (EXReadState)exState;
@end

@implementation EXOAVState

- (EXReadState)exState
{
  WeakRetained = objc_loadWeakRetained(&self->mEXReadState);

  return WeakRetained;
}

- (EXOAVState)initWithEXReadState:(id)state packagePart:(id)part
{
  stateCopy = state;
  partCopy = part;
  v8 = objc_opt_class();
  v15.receiver = self;
  v15.super_class = EXOAVState;
  v9 = [(OAVReadState *)&v15 initWithClient:v8 packagePart:partCopy];
  v10 = objc_storeWeak(&v9->mEXReadState, stateCopy);
  mXMLFormat = v9->super.super.super.mXMLFormat;
  v12 = v10;
  LODWORD(self) = [stateCopy xmlFormat];

  if (mXMLFormat != self)
  {
    WeakRetained = objc_loadWeakRetained(&v9->mEXReadState);
    -[OCXState setupNSForXMLFormat:](v9, "setupNSForXMLFormat:", [WeakRetained xmlFormat]);
  }

  return v9;
}

@end
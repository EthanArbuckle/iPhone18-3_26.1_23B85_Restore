@interface IDSGlobalLinkBlocks
- (IDSGlobalLinkBlocks)initWithBlocks:(id)a3 qraAWDBlock:(id)a4 qraCONBlock:(id)a5 qraDISBlock:(id)a6;
@end

@implementation IDSGlobalLinkBlocks

- (IDSGlobalLinkBlocks)initWithBlocks:(id)a3 qraAWDBlock:(id)a4 qraCONBlock:(id)a5 qraDISBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = IDSGlobalLinkBlocks;
  v14 = [(IDSGlobalLinkBlocks *)&v24 init];
  if (v14)
  {
    v15 = _Block_copy(v10);
    qraREQBlock = v14->_qraREQBlock;
    v14->_qraREQBlock = v15;

    v17 = _Block_copy(v11);
    qraAWDBlock = v14->_qraAWDBlock;
    v14->_qraAWDBlock = v17;

    v19 = _Block_copy(v12);
    qraCONBlock = v14->_qraCONBlock;
    v14->_qraCONBlock = v19;

    v21 = _Block_copy(v13);
    qraDISBlock = v14->_qraDISBlock;
    v14->_qraDISBlock = v21;
  }

  return v14;
}

@end
@interface IDSGlobalLinkBlocks
- (IDSGlobalLinkBlocks)initWithBlocks:(id)blocks qraAWDBlock:(id)block qraCONBlock:(id)nBlock qraDISBlock:(id)sBlock;
@end

@implementation IDSGlobalLinkBlocks

- (IDSGlobalLinkBlocks)initWithBlocks:(id)blocks qraAWDBlock:(id)block qraCONBlock:(id)nBlock qraDISBlock:(id)sBlock
{
  blocksCopy = blocks;
  blockCopy = block;
  nBlockCopy = nBlock;
  sBlockCopy = sBlock;
  v24.receiver = self;
  v24.super_class = IDSGlobalLinkBlocks;
  v14 = [(IDSGlobalLinkBlocks *)&v24 init];
  if (v14)
  {
    v15 = _Block_copy(blocksCopy);
    qraREQBlock = v14->_qraREQBlock;
    v14->_qraREQBlock = v15;

    v17 = _Block_copy(blockCopy);
    qraAWDBlock = v14->_qraAWDBlock;
    v14->_qraAWDBlock = v17;

    v19 = _Block_copy(nBlockCopy);
    qraCONBlock = v14->_qraCONBlock;
    v14->_qraCONBlock = v19;

    v21 = _Block_copy(sBlockCopy);
    qraDISBlock = v14->_qraDISBlock;
    v14->_qraDISBlock = v21;
  }

  return v14;
}

@end
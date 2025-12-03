@interface HMDBufferingStructureDataFilter
- (HMDBufferingStructureDataFilter)initWithUnderlyingWriter:(id)writer block:(id)block;
- (void)emitRootValue:(id)value;
@end

@implementation HMDBufferingStructureDataFilter

- (void)emitRootValue:(id)value
{
  v4 = (*(self->_block + 2))();
  v5 = 0;
  v6 = v5;
  writer = self->_writer;
  if (v4)
  {
    [(HMDStructuredWriter *)writer writeLogicalValue:v4];
  }

  else if (v5)
  {
    [(HMDStructuredWriter *)writer failWithError:v5];
  }

  else
  {
    hmfUnspecifiedError = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    [(HMDStructuredWriter *)writer failWithError:hmfUnspecifiedError];
  }
}

- (HMDBufferingStructureDataFilter)initWithUnderlyingWriter:(id)writer block:(id)block
{
  writerCopy = writer;
  blockCopy = block;
  if (!writerCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = blockCopy;
  if (!blockCopy)
  {
LABEL_7:
    v15 = _HMFPreconditionFailure();
    return __HMDResidentSyncAdapter_1_1_block_invoke(v15);
  }

  v16.receiver = self;
  v16.super_class = HMDBufferingStructureDataFilter;
  v10 = [(HMDStructuredDataFoundationWriter *)&v16 initWithMutableContainers:1];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_writer, writer);
    v12 = _Block_copy(v9);
    block = v11->_block;
    v11->_block = v12;
  }

  return v11;
}

@end
@interface HMDBufferingStructureDataFilter
- (HMDBufferingStructureDataFilter)initWithUnderlyingWriter:(id)a3 block:(id)a4;
- (void)emitRootValue:(id)a3;
@end

@implementation HMDBufferingStructureDataFilter

- (void)emitRootValue:(id)a3
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
    v8 = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    [(HMDStructuredWriter *)writer failWithError:v8];
  }
}

- (HMDBufferingStructureDataFilter)initWithUnderlyingWriter:(id)a3 block:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = v8;
  if (!v8)
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
    objc_storeStrong(&v10->_writer, a3);
    v12 = _Block_copy(v9);
    block = v11->_block;
    v11->_block = v12;
  }

  return v11;
}

@end
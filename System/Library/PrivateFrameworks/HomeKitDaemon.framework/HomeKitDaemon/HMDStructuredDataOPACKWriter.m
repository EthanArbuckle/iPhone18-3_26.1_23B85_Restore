@interface HMDStructuredDataOPACKWriter
- (void)emitRootValue:(id)a3;
@end

@implementation HMDStructuredDataOPACKWriter

- (void)emitRootValue:(id)a3
{
  output = self->_output;
  v5 = OPACKEncodeObject();
  if (v5)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v5 userInfo:0];
    [(HMDStructuredDataFoundationWriter *)self failWithError:v6];
  }
}

@end
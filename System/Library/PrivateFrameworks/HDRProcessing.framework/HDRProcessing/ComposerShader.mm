@interface ComposerShader
- (id)getComputePipeLineStateForDevice:(id)device Library:(id)library;
- (id)getComputePipeLineStateForDevice:(id)device Library:(id)library input:(int)input output:(int)output;
- (id)initShaderWithName:(id)name dolby84:(BOOL)dolby84 forLLDovi:(BOOL)dovi input:(int)input output:(int)output;
@end

@implementation ComposerShader

- (id)initShaderWithName:(id)name dolby84:(BOOL)dolby84 forLLDovi:(BOOL)dovi input:(int)input output:(int)output
{
  v12.receiver = self;
  v12.super_class = ComposerShader;
  result = [(ForwardDmShader *)&v12 initShaderWithName:name];
  if (result)
  {
    *(result + 32) = dolby84;
    *(result + 33) = dovi;
    *(result + 9) = input;
    *(result + 10) = output;
  }

  return result;
}

- (id)getComputePipeLineStateForDevice:(id)device Library:(id)library
{
  v4 = [(ComposerShader *)self getComputePipeLineStateForDevice:device Library:library input:38 output:6];

  return v4;
}

- (id)getComputePipeLineStateForDevice:(id)device Library:(id)library input:(int)input output:(int)output
{
  v28 = *MEMORY[0x277D85DE8];
  v18[0] = self->_dolby84;
  v18[1] = self->_forLLDovi;
  v17.receiver = self;
  v17.super_class = ComposerShader;
  v9 = [(ForwardDmShader *)&v17 getComputePipeLineStateForDevice:device Library:library Constants:v18 ConstantNumber:2 input:input output:output];
  if (!v9)
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v10 = logInstanceID;
      }

      else
      {
        v10 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        dolby84 = self->_dolby84;
        forLLDovi = self->_forLLDovi;
        *buf = 134219266;
        v20 = WORD1(v10);
        v21 = 2080;
        *v22 = "[ComposerShader getComputePipeLineStateForDevice:Library:input:output:]";
        *&v22[8] = 1024;
        *v23 = dolby84;
        *&v23[4] = 1024;
        *v24 = forLLDovi;
        *&v24[4] = 1024;
        inputCopy = input;
        v26 = 1024;
        outputCopy = output;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : ERROR: Failed creating a new function with dolby84=%d, forLLDoVi=%d input=%d output=%d", buf, 0x2Eu);
      }

      prevLogInstanceID = v10;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_dolby84;
      v14 = self->_forLLDovi;
      *buf = 136316162;
      v20 = "[ComposerShader getComputePipeLineStateForDevice:Library:input:output:]";
      v21 = 1024;
      *v22 = v13;
      *&v22[4] = 1024;
      *&v22[6] = v14;
      *v23 = 1024;
      *&v23[2] = input;
      *v24 = 1024;
      *&v24[2] = output;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : ERROR: Failed creating a new function with dolby84=%d, forLLDoVi=%d input=%d output=%d", buf, 0x24u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

@end
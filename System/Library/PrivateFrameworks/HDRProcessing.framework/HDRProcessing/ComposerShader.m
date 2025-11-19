@interface ComposerShader
- (id)getComputePipeLineStateForDevice:(id)a3 Library:(id)a4;
- (id)getComputePipeLineStateForDevice:(id)a3 Library:(id)a4 input:(int)a5 output:(int)a6;
- (id)initShaderWithName:(id)a3 dolby84:(BOOL)a4 forLLDovi:(BOOL)a5 input:(int)a6 output:(int)a7;
@end

@implementation ComposerShader

- (id)initShaderWithName:(id)a3 dolby84:(BOOL)a4 forLLDovi:(BOOL)a5 input:(int)a6 output:(int)a7
{
  v12.receiver = self;
  v12.super_class = ComposerShader;
  result = [(ForwardDmShader *)&v12 initShaderWithName:a3];
  if (result)
  {
    *(result + 32) = a4;
    *(result + 33) = a5;
    *(result + 9) = a6;
    *(result + 10) = a7;
  }

  return result;
}

- (id)getComputePipeLineStateForDevice:(id)a3 Library:(id)a4
{
  v4 = [(ComposerShader *)self getComputePipeLineStateForDevice:a3 Library:a4 input:38 output:6];

  return v4;
}

- (id)getComputePipeLineStateForDevice:(id)a3 Library:(id)a4 input:(int)a5 output:(int)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v18[0] = self->_dolby84;
  v18[1] = self->_forLLDovi;
  v17.receiver = self;
  v17.super_class = ComposerShader;
  v9 = [(ForwardDmShader *)&v17 getComputePipeLineStateForDevice:a3 Library:a4 Constants:v18 ConstantNumber:2 input:a5 output:a6];
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
        v25 = a5;
        v26 = 1024;
        v27 = a6;
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
      *&v23[2] = a5;
      *v24 = 1024;
      *&v24[2] = a6;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : ERROR: Failed creating a new function with dolby84=%d, forLLDoVi=%d input=%d output=%d", buf, 0x24u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

@end
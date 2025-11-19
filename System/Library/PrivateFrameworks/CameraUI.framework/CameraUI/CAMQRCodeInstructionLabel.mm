@interface CAMQRCodeInstructionLabel
+ (BOOL)shouldDisplayInstructionForMRCResults:(id)a3 devicePosition:(int64_t)a4;
+ (id)_textForMRCResults:(id)a3 devicePosition:(int64_t)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)_updateTextWithPriorMRCResults:(id)a3;
- (void)setDevicePosition:(int64_t)a3;
- (void)setMRCResults:(id)a3;
@end

@implementation CAMQRCodeInstructionLabel

- (void)setMRCResults:(id)a3
{
  v4 = a3;
  mrcResults = self->_mrcResults;
  if (mrcResults != v4)
  {
    v9 = v4;
    v6 = v4;
    v7 = self->_mrcResults;
    self->_mrcResults = v6;
    v8 = mrcResults;

    [(CAMQRCodeInstructionLabel *)self _updateTextWithPriorMRCResults:v8];
    v4 = v9;
  }
}

- (void)setDevicePosition:(int64_t)a3
{
  if (self->_devicePosition != a3)
  {
    self->_devicePosition = a3;
    [(CAMQRCodeInstructionLabel *)self _updateTextWithPriorMRCResults:self->_mrcResults];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = CAMQRCodeInstructionLabel;
  [(CAMInstructionLabel *)&v9 sizeThatFits:?];
  if (v5 < 108.0 && height == 0.0 && width == 0.0)
  {
    v5 = 108.0;
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (void)_updateTextWithPriorMRCResults:(id)a3
{
  v4 = a3;
  v8 = [(CAMQRCodeInstructionLabel *)self mrcResults];
  v5 = [objc_opt_class() _textForMRCResults:v8 devicePosition:{-[CAMQRCodeInstructionLabel devicePosition](self, "devicePosition")}];
  v6 = [objc_opt_class() _textForMRCResults:v4 devicePosition:{-[CAMQRCodeInstructionLabel devicePosition](self, "devicePosition")}];

  if (v5)
  {
    [(CAMInstructionLabel *)self setText:v5];
  }

  if (([v5 isEqualToString:v6] & 1) == 0)
  {
    v7 = [(CAMInstructionLabel *)self delegate];
    [v7 instructionLabelDidChangeIntrinsicContentSize:self];
  }
}

+ (BOOL)shouldDisplayInstructionForMRCResults:(id)a3 devicePosition:(int64_t)a4
{
  v4 = [a1 _textForMRCResults:a3 devicePosition:a4];
  v5 = [v4 length] != 0;

  return v5;
}

+ (id)_textForMRCResults:(id)a3 devicePosition:(int64_t)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a4 == 1)
  {
LABEL_13:
    v7 = 0;
  }

  else
  {
    v7 = [v5 count];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if ([*(*(&v14 + 1) + 8 * i) isOfSignificantSize])
          {

            goto LABEL_13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    if (v7)
    {
      v7 = CAMLocalizedFrameworkString(@"QR_CODE_MOVE_CLOSER", &stru_1F1660A30);
    }
  }

  return v7;
}

@end
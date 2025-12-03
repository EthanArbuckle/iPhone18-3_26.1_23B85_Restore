@interface CAMQRCodeInstructionLabel
+ (BOOL)shouldDisplayInstructionForMRCResults:(id)results devicePosition:(int64_t)position;
+ (id)_textForMRCResults:(id)results devicePosition:(int64_t)position;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)_updateTextWithPriorMRCResults:(id)results;
- (void)setDevicePosition:(int64_t)position;
- (void)setMRCResults:(id)results;
@end

@implementation CAMQRCodeInstructionLabel

- (void)setMRCResults:(id)results
{
  resultsCopy = results;
  mrcResults = self->_mrcResults;
  if (mrcResults != resultsCopy)
  {
    v9 = resultsCopy;
    v6 = resultsCopy;
    v7 = self->_mrcResults;
    self->_mrcResults = v6;
    v8 = mrcResults;

    [(CAMQRCodeInstructionLabel *)self _updateTextWithPriorMRCResults:v8];
    resultsCopy = v9;
  }
}

- (void)setDevicePosition:(int64_t)position
{
  if (self->_devicePosition != position)
  {
    self->_devicePosition = position;
    [(CAMQRCodeInstructionLabel *)self _updateTextWithPriorMRCResults:self->_mrcResults];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
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

- (void)_updateTextWithPriorMRCResults:(id)results
{
  resultsCopy = results;
  mrcResults = [(CAMQRCodeInstructionLabel *)self mrcResults];
  v5 = [objc_opt_class() _textForMRCResults:mrcResults devicePosition:{-[CAMQRCodeInstructionLabel devicePosition](self, "devicePosition")}];
  v6 = [objc_opt_class() _textForMRCResults:resultsCopy devicePosition:{-[CAMQRCodeInstructionLabel devicePosition](self, "devicePosition")}];

  if (v5)
  {
    [(CAMInstructionLabel *)self setText:v5];
  }

  if (([v5 isEqualToString:v6] & 1) == 0)
  {
    delegate = [(CAMInstructionLabel *)self delegate];
    [delegate instructionLabelDidChangeIntrinsicContentSize:self];
  }
}

+ (BOOL)shouldDisplayInstructionForMRCResults:(id)results devicePosition:(int64_t)position
{
  v4 = [self _textForMRCResults:results devicePosition:position];
  v5 = [v4 length] != 0;

  return v5;
}

+ (id)_textForMRCResults:(id)results devicePosition:(int64_t)position
{
  v19 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v6 = resultsCopy;
  if (position == 1)
  {
LABEL_13:
    v7 = 0;
  }

  else
  {
    v7 = [resultsCopy count];
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
@interface CAMSpatialCaptureInstructionLabel
- (void)_updateText;
- (void)setStereoCaptureStatus:(int64_t)status;
- (void)setUseHoldStillLowLightInstruction:(BOOL)instruction;
@end

@implementation CAMSpatialCaptureInstructionLabel

- (void)setStereoCaptureStatus:(int64_t)status
{
  if (self->_stereoCaptureStatus != status)
  {
    self->_stereoCaptureStatus = status;
    [(CAMSpatialCaptureInstructionLabel *)self _updateText];
  }
}

- (void)setUseHoldStillLowLightInstruction:(BOOL)instruction
{
  if (self->_useHoldStillLowLightInstruction != instruction)
  {
    self->_useHoldStillLowLightInstruction = instruction;
    [(CAMSpatialCaptureInstructionLabel *)self _updateText];
  }
}

- (void)_updateText
{
  stereoCaptureStatus = [(CAMSpatialCaptureInstructionLabel *)self stereoCaptureStatus];
  if ((~stereoCaptureStatus & 3) == 0)
  {
    v4 = @"SPATIAL_MORE_LIGHT_REQUIRED_INSTRUCTION_LABEL";
LABEL_8:
    v5 = CAMLocalizedFrameworkString(v4, 0);
    goto LABEL_9;
  }

  if ((stereoCaptureStatus & 4) != 0)
  {
    v4 = @"SPATIAL_VIDEO_SUBJECT_TOO_CLOSE_INSTRUCTION_LABEL";
    goto LABEL_8;
  }

  if ((stereoCaptureStatus & 2) == 0)
  {
    goto LABEL_11;
  }

  v5 = CAMLocalizedFrameworkString(@"SPATIAL_VIDEO_LOW_LIGHT_INSTRUCTION_LABEL", 0);
  if ([(CAMSpatialCaptureInstructionLabel *)self useHoldStillLowLightInstruction])
  {
    v6 = CAMLocalizedFrameworkString(@"SPATIAL_LOW_LIGHT_HOLD_STILL_INSTRUCTION_LABEL", 0);

    v5 = v6;
  }

LABEL_9:
  if (v5)
  {
    [(CAMInstructionLabel *)self setText:v5];
  }

LABEL_11:
  delegate = [(CAMInstructionLabel *)self delegate];
  [delegate instructionLabelDidChangeIntrinsicContentSize:self];
}

@end
@interface BWStereoDisparityProcessorInput
- (BWStereoDisparityProcessorInput)initWithSettings:(id)a3 portType:(id)a4;
- (id)description;
- (void)addSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)dealloc;
@end

@implementation BWStereoDisparityProcessorInput

- (void)dealloc
{
  referenceSbuf = self->_referenceSbuf;
  if (referenceSbuf)
  {
    CFRelease(referenceSbuf);
  }

  auxiliarySbuf = self->_auxiliarySbuf;
  if (auxiliarySbuf)
  {
    CFRelease(auxiliarySbuf);
  }

  v5.receiver = self;
  v5.super_class = BWStereoDisparityProcessorInput;
  [(BWStillImageProcessorControllerInput *)&v5 dealloc];
}

- (BWStereoDisparityProcessorInput)initWithSettings:(id)a3 portType:(id)a4
{
  v8.receiver = self;
  v8.super_class = BWStereoDisparityProcessorInput;
  v5 = [(BWStillImageProcessorControllerInput *)&v8 initWithSettings:a3 portType:a4];
  if (v5)
  {
    v6 = ([objc_msgSend(a3 "captureSettings")] & 0x20000) != 0 && objc_msgSend(objc_msgSend(a3, "captureSettings"), "captureType") == 10;
    v5->_equalizeTeleGainToMatchReference = v6;
    v5->_emitAuxiliaryInput = [objc_msgSend(objc_msgSend(a3 "requestedSettings")] != 0;
    v5->_expectedPortTypes = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:{objc_msgSend(objc_msgSend(a3, "captureSettings"), "portTypes")}];
  }

  return v5;
}

- (void)addSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  if (a3)
  {
    if ([objc_msgSend(CMGetAttachment(a3 *off_1E798A3C8])
    {
      v5 = 48;
    }

    else
    {
      v5 = 56;
    }

    v6 = (&self->super.super.isa + v5);
    v7 = *(&self->super.super.isa + v5);
    if (v7)
    {
      CFRelease(v7);
    }

    *v6 = CFRetain(a3);
    delegate = self->_delegate;

    [(BWStereoDisparityProcessorInputDelegate *)delegate inputReceivedNewInputData:self];
  }

  else
  {
    [BWStereoDisparityProcessorInput addSampleBuffer:];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p>: captureID:%lld, captureType=%@, %@ : ref:%p aux:%p emitAux:%d eqTele:%d", v4, self, -[BWStillImageCaptureSettings settingsID](-[BWStillImageProcessorControllerInput captureSettings](self, "captureSettings"), "settingsID"), BWPhotoEncoderStringFromEncodingScheme(-[BWStillImageCaptureStreamSettings captureType](-[BWStillImageProcessorControllerInput captureStreamSettings](self, "captureStreamSettings"), "captureType")), -[BWStillImageCaptureStreamSettings portType](-[BWStillImageProcessorControllerInput captureStreamSettings](self, "captureStreamSettings"), "portType"), self->_referenceSbuf, self->_auxiliarySbuf, self->_emitAuxiliaryInput, self->_equalizeTeleGainToMatchReference];
}

@end
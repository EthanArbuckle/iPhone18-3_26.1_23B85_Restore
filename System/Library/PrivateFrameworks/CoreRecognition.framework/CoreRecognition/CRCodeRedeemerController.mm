@interface CRCodeRedeemerController
+ (id)findCodeInImage:(vImage_Buffer *)image maxStage:(unint64_t)stage;
+ (id)findCodeInImage:(vImage_Buffer *)image maxStage:(unint64_t)stage roi:(CGRect)roi;
- (CRCodeRedeemerController)init;
- (CRCodeRedeemerControllerDelegate)delegate;
- (void)cameraReader:(id)reader didFailWithError:(id)error;
- (void)cameraReader:(id)reader didRecognizeObjects:(id)objects;
- (void)cameraReaderDidCancel:(id)cancel;
- (void)cameraReaderDidDisplayMessage:(id)message;
- (void)cameraReaderDidFindTarget:(id)target;
- (void)showMessage:(id)message color:(id)color style:(unint64_t)style duration:(double)duration;
@end

@implementation CRCodeRedeemerController

- (CRCodeRedeemerController)init
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = CRCodeRedeemerController;
  v2 = [(CRCameraReader *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v7.receiver = v2;
    v7.super_class = CRCodeRedeemerController;
    [(CRCameraReader *)&v7 setDelegate:v2];
    v9[0] = @"CROutputTypeiTunesCode";
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v6.receiver = v3;
    v6.super_class = CRCodeRedeemerController;
    [(CRCameraReader *)&v6 setOutputObjectTypes:v4];

    [(CRCodeRedeemerController *)v3 setDelegateQueue:MEMORY[0x277D85CD0]];
  }

  return v3;
}

+ (id)findCodeInImage:(vImage_Buffer *)image maxStage:(unint64_t)stage
{
  width = image->width;
  height = image->height;
  v6 = *&image->width;
  v9[0] = *&image->data;
  v9[1] = v6;
  height = [CRCodeRedeemerController findCodeInImage:v9 maxStage:stage roi:0.0, 0.0, width, height];

  return height;
}

+ (id)findCodeInImage:(vImage_Buffer *)image maxStage:(unint64_t)stage roi:(CGRect)roi
{
  v5 = *&image->width;
  v8[0] = *&image->data;
  v8[1] = v5;
  v6 = [CRCameraReader findCodeInImage:v8 maxStage:stage roi:roi.origin.x, roi.origin.y, roi.size.width, roi.size.height];

  return v6;
}

- (void)showMessage:(id)message color:(id)color style:(unint64_t)style duration:(double)duration
{
  v6.receiver = self;
  v6.super_class = CRCodeRedeemerController;
  [(CRCameraReader *)&v6 showMessage:message color:color style:style duration:duration];
}

- (void)cameraReader:(id)reader didFailWithError:(id)error
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObject:error forKey:@"Error"];
  delegate = [(CRCodeRedeemerController *)self delegate];
  [delegate codeRedeemerController:self didEndWithInfo:v6];
}

- (void)cameraReader:(id)reader didRecognizeObjects:(id)objects
{
  v21 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = objectsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        type = [v10 type];
        v12 = [type isEqualToString:@"CROutputTypeiTunesCode"];

        if (v12)
        {
          stringValue = [v10 stringValue];
          [dictionary setObject:stringValue forKey:@"Code"];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  delegate = [(CRCodeRedeemerController *)self delegate];
  [delegate codeRedeemerController:self didEndWithInfo:dictionary];
}

- (void)cameraReaderDidCancel:(id)cancel
{
  delegate = [(CRCodeRedeemerController *)self delegate];
  [delegate codeRedeemerControllerDidCancel:self];
}

- (void)cameraReaderDidDisplayMessage:(id)message
{
  delegate = [(CRCodeRedeemerController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CRCodeRedeemerController *)self delegate];
    [delegate2 codeRedeemerControllerDidDisplayMessage:self];
  }
}

- (void)cameraReaderDidFindTarget:(id)target
{
  delegate = [(CRCodeRedeemerController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CRCodeRedeemerController *)self delegate];
    [delegate2 codeRedeemerControllerDidFindBox:self];
  }
}

- (CRCodeRedeemerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface CRCodeRedeemerController
+ (id)findCodeInImage:(vImage_Buffer *)a3 maxStage:(unint64_t)a4;
+ (id)findCodeInImage:(vImage_Buffer *)a3 maxStage:(unint64_t)a4 roi:(CGRect)a5;
- (CRCodeRedeemerController)init;
- (CRCodeRedeemerControllerDelegate)delegate;
- (void)cameraReader:(id)a3 didFailWithError:(id)a4;
- (void)cameraReader:(id)a3 didRecognizeObjects:(id)a4;
- (void)cameraReaderDidCancel:(id)a3;
- (void)cameraReaderDidDisplayMessage:(id)a3;
- (void)cameraReaderDidFindTarget:(id)a3;
- (void)showMessage:(id)a3 color:(id)a4 style:(unint64_t)a5 duration:(double)a6;
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

+ (id)findCodeInImage:(vImage_Buffer *)a3 maxStage:(unint64_t)a4
{
  width = a3->width;
  height = a3->height;
  v6 = *&a3->width;
  v9[0] = *&a3->data;
  v9[1] = v6;
  v7 = [CRCodeRedeemerController findCodeInImage:v9 maxStage:a4 roi:0.0, 0.0, width, height];

  return v7;
}

+ (id)findCodeInImage:(vImage_Buffer *)a3 maxStage:(unint64_t)a4 roi:(CGRect)a5
{
  v5 = *&a3->width;
  v8[0] = *&a3->data;
  v8[1] = v5;
  v6 = [CRCameraReader findCodeInImage:v8 maxStage:a4 roi:a5.origin.x, a5.origin.y, a5.size.width, a5.size.height];

  return v6;
}

- (void)showMessage:(id)a3 color:(id)a4 style:(unint64_t)a5 duration:(double)a6
{
  v6.receiver = self;
  v6.super_class = CRCodeRedeemerController;
  [(CRCameraReader *)&v6 showMessage:a3 color:a4 style:a5 duration:a6];
}

- (void)cameraReader:(id)a3 didFailWithError:(id)a4
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObject:a4 forKey:@"Error"];
  v5 = [(CRCodeRedeemerController *)self delegate];
  [v5 codeRedeemerController:self didEndWithInfo:v6];
}

- (void)cameraReader:(id)a3 didRecognizeObjects:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
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
        v11 = [v10 type];
        v12 = [v11 isEqualToString:@"CROutputTypeiTunesCode"];

        if (v12)
        {
          v13 = [v10 stringValue];
          [v5 setObject:v13 forKey:@"Code"];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = [(CRCodeRedeemerController *)self delegate];
  [v14 codeRedeemerController:self didEndWithInfo:v5];
}

- (void)cameraReaderDidCancel:(id)a3
{
  v4 = [(CRCodeRedeemerController *)self delegate];
  [v4 codeRedeemerControllerDidCancel:self];
}

- (void)cameraReaderDidDisplayMessage:(id)a3
{
  v5 = [(CRCodeRedeemerController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = [(CRCodeRedeemerController *)self delegate];
    [v6 codeRedeemerControllerDidDisplayMessage:self];
  }
}

- (void)cameraReaderDidFindTarget:(id)a3
{
  v5 = [(CRCodeRedeemerController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = [(CRCodeRedeemerController *)self delegate];
    [v6 codeRedeemerControllerDidFindBox:self];
  }
}

- (CRCodeRedeemerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface NTKPigmentAddController
- (NTKPigmentAddController)initWithFace:(id)a3 faceView:(id)a4 slot:(id)a5 willExitHandler:(id)a6;
- (void)viewDidLoad;
@end

@implementation NTKPigmentAddController

- (NTKPigmentAddController)initWithFace:(id)a3 faceView:(id)a4 slot:(id)a5 willExitHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[_NTKPigmentAddController alloc] initWithFace:v13 faceView:v12 slot:v11 willExitHandler:v10];

  v19.receiver = self;
  v19.super_class = NTKPigmentAddController;
  v15 = [(NTKCNavigationController *)&v19 initWithRootViewController:v14];
  v16 = v15;
  if (v15)
  {
    v17 = [(NTKPigmentAddController *)v15 presentationController];
    [v17 setDelegate:v14];
  }

  return v16;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = NTKPigmentAddController;
  [(NTKPigmentAddController *)&v3 viewDidLoad];
  [(NTKPigmentAddController *)self setToolbarHidden:1];
}

@end
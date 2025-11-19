@interface BTSDeviceConfigDigitalCrownController
- (id)getRotationImageFileName:(int64_t)a3;
- (void)listItemSelected:(id)a3;
- (void)setupTableViewHeader;
- (void)updateRotateImage:(int64_t)a3;
@end

@implementation BTSDeviceConfigDigitalCrownController

- (void)setupTableViewHeader
{
  v14 = [(BTSDeviceConfigDigitalCrownController *)self getRotationImageFileName:*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC68])];
  v3 = MEMORY[0x277D755B8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v3 imageNamed:v14 inBundle:v4];
  rotationImage = self->_rotationImage;
  self->_rotationImage = v5;

  v7 = objc_alloc(MEMORY[0x277D755E8]);
  [(UIImage *)self->_rotationImage size];
  v9 = v8;
  [(UIImage *)self->_rotationImage size];
  v11 = [v7 initWithFrame:{0.0, 0.0, v9, v10 + 40.0}];
  rotationImageView = self->_rotationImageView;
  self->_rotationImageView = v11;

  [(UIImageView *)self->_rotationImageView setImage:self->_rotationImage];
  [(UIImageView *)self->_rotationImageView setContentMode:6];
  v13 = [(BTSDeviceConfigDigitalCrownController *)self table];
  [v13 setTableHeaderView:self->_rotationImageView];
}

- (void)listItemSelected:(id)a3
{
  v6.receiver = self;
  v6.super_class = BTSDeviceConfigDigitalCrownController;
  v4 = a3;
  [(PSListItemsController *)&v6 listItemSelected:v4];
  v5 = [v4 row];

  [(BTSDeviceConfigDigitalCrownController *)self updateRotateImage:v5 + 1];
}

- (void)updateRotateImage:(int64_t)a3
{
  v8 = [(BTSDeviceConfigDigitalCrownController *)self getRotationImageFileName:a3];
  v4 = MEMORY[0x277D755B8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v4 imageNamed:v8 inBundle:v5];
  rotationImage = self->_rotationImage;
  self->_rotationImage = v6;

  [(UIImageView *)self->_rotationImageView setImage:self->_rotationImage];
}

- (id)getRotationImageFileName:(int64_t)a3
{
  v3 = "RotateBackToFrontGraphic";
  if (a3 == 2)
  {
    v3 = "RotateFrontToBackGraphic";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%s", v3];
}

@end
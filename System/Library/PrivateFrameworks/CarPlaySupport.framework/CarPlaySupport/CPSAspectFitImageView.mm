@interface CPSAspectFitImageView
- (CPSAspectFitImageView)init;
- (void)_updateConstraints;
- (void)setImage:(id)image;
@end

@implementation CPSAspectFitImageView

- (CPSAspectFitImageView)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = CPSAspectFitImageView;
  v6 = [(CPSAspectFitImageView *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    [(CPSAspectFitImageView *)v6 setContentMode:1];
  }

  v3 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (void)setImage:(id)image
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  v3.receiver = selfCopy;
  v3.super_class = CPSAspectFitImageView;
  [(CPSAspectFitImageView *)&v3 setImage:location[0]];
  [(CPSAspectFitImageView *)selfCopy _updateConstraints];
  objc_storeStrong(location, 0);
}

- (void)_updateConstraints
{
  v38[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v35 = a2;
  aspectConstraint = [(CPSAspectFitImageView *)self aspectConstraint];
  *&v2 = MEMORY[0x277D82BD8](aspectConstraint).n128_u64[0];
  if (aspectConstraint)
  {
    v24 = MEMORY[0x277CCAAD0];
    aspectConstraint2 = [(CPSAspectFitImageView *)selfCopy aspectConstraint];
    v38[0] = aspectConstraint2;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
    [v24 deactivateConstraints:?];
    MEMORY[0x277D82BD8](v25);
    [(CPSAspectFitImageView *)selfCopy setAspectConstraint:0, MEMORY[0x277D82BD8](aspectConstraint2).n128_f64[0]];
  }

  image = [(CPSAspectFitImageView *)selfCopy image];
  v33 = 0;
  v29 = 0;
  v23 = 0;
  if (image)
  {
    image2 = [(CPSAspectFitImageView *)selfCopy image];
    v33 = 1;
    [image2 size];
    v31 = v4;
    v32 = v3;
    v23 = 0;
    if (v3 > 0.0)
    {
      image3 = [(CPSAspectFitImageView *)selfCopy image];
      v29 = 1;
      [image3 size];
      v28[6] = v5;
      v28[7] = v6;
      v23 = *&v5 > 0.0;
    }
  }

  if (v29)
  {
    MEMORY[0x277D82BD8](image3);
  }

  if (v33)
  {
    MEMORY[0x277D82BD8](image2);
  }

  *&v7 = MEMORY[0x277D82BD8](image).n128_u64[0];
  if (v23)
  {
    image4 = [(CPSAspectFitImageView *)selfCopy image];
    [image4 size];
    v28[3] = v8;
    v28[4] = v9;
    v15 = *&v8;
    image5 = [(CPSAspectFitImageView *)selfCopy image];
    [image5 size];
    v28[1] = v10;
    v28[2] = v11;
    v17 = v15 / *&v11;
    MEMORY[0x277D82BD8](image5);
    MEMORY[0x277D82BD8](image4);
    v28[5] = *&v17;
    widthAnchor = [(CPSAspectFitImageView *)selfCopy widthAnchor];
    heightAnchor = [(CPSAspectFitImageView *)selfCopy heightAnchor];
    v28[0] = [widthAnchor constraintEqualToAnchor:v17 multiplier:?];
    MEMORY[0x277D82BD8](heightAnchor);
    v12 = MEMORY[0x277D82BD8](widthAnchor);
    v12.n128_u32[0] = 1148846080;
    [v28[0] setPriority:v12.n128_f64[0]];
    v20 = MEMORY[0x277CCAAD0];
    v37 = v28[0];
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
    [v20 activateConstraints:?];
    *&v13 = MEMORY[0x277D82BD8](v21).n128_u64[0];
    [(CPSAspectFitImageView *)selfCopy setAspectConstraint:v28[0], v13];
    objc_storeStrong(v28, 0);
  }
}

@end
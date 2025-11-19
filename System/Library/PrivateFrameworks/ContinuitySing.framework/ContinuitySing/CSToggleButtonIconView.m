@interface CSToggleButtonIconView
- (CSToggleButtonIconView)initWithConfiguration:(id)a3;
- (id)_imageForState:(unint64_t)a3;
- (void)setState:(unint64_t)a3;
@end

@implementation CSToggleButtonIconView

- (CSToggleButtonIconView)initWithConfiguration:(id)a3
{
  v5 = a3;
  v24.receiver = self;
  v24.super_class = CSToggleButtonIconView;
  v6 = [(CSToggleButtonIconView *)&v24 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = objc_alloc_init(MEMORY[0x277D755E8]);
    imageView = v7->_imageView;
    v7->_imageView = v8;

    [(UIImageView *)v7->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v7->_imageView setContentMode:1];
    [(CSToggleButtonIconView *)v7 addSubview:v7->_imageView];
    v19 = MEMORY[0x277CCAAD0];
    v22 = [(UIImageView *)v7->_imageView centerXAnchor];
    v21 = [(CSToggleButtonIconView *)v7 centerXAnchor];
    v20 = [v22 constraintEqualToAnchor:v21];
    v23[0] = v20;
    v10 = [(UIImageView *)v7->_imageView centerYAnchor];
    v11 = [(CSToggleButtonIconView *)v7 centerYAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v23[1] = v12;
    v13 = [(UIImageView *)v7->_imageView widthAnchor];
    v14 = [v13 constraintEqualToConstant:108.0];
    v23[2] = v14;
    v15 = [(UIImageView *)v7->_imageView heightAnchor];
    v16 = [v15 constraintEqualToConstant:108.0];
    v23[3] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
    [v19 activateConstraints:v17];

    [(CSToggleButtonIconView *)v7 setClipsToBounds:0];
  }

  return v7;
}

- (void)setState:(unint64_t)a3
{
  v4 = [(CSToggleButtonIconView *)self _imageForState:a3];
  v5 = MEMORY[0x277D75D18];
  imageView = self->_imageView;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__CSToggleButtonIconView_setState___block_invoke;
  v8[3] = &unk_278E0AD78;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v5 transitionWithView:imageView duration:5242884 options:v8 animations:0 completion:0.1];
}

- (id)_imageForState:(unint64_t)a3
{
  v5 = [(CSToggleButtonConfiguration *)self->_configuration iconImages];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v8 = ContinuitySingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CSToggleButtonIconView _imageForState:];
    }
  }

  else
  {
    v7 = [(CSToggleButtonConfiguration *)self->_configuration iconImages];
    v8 = [v7 objectAtIndexedSubscript:a3];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v8;
      v9 = v8;
      goto LABEL_10;
    }

    v10 = ContinuitySingLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CSToggleButtonIconView _imageForState:];
    }
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (void)_imageForState:.cold.1()
{
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_2441FB000, v0, OS_LOG_TYPE_ERROR, "%s: Invalid state: %lu", v1, 0x16u);
}

- (void)_imageForState:.cold.2()
{
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_2441FB000, v0, OS_LOG_TYPE_ERROR, "%s: No image found for toggle state: %lu", v1, 0x16u);
}

@end
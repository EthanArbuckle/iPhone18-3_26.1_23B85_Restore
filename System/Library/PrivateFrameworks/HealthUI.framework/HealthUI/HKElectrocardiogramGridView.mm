@interface HKElectrocardiogramGridView
- (CGSize)majorGridSize;
- (CGSize)unitSize;
- (HKElectrocardiogramGridView)initWithUnitSize:(CGSize)a3 grids:(id)a4;
- (void)_createLayers;
- (void)layoutSubviews;
- (void)setControlSignalPath:(id)a3;
@end

@implementation HKElectrocardiogramGridView

- (HKElectrocardiogramGridView)initWithUnitSize:(CGSize)a3 grids:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = HKElectrocardiogramGridView;
  v8 = [(HKElectrocardiogramGridView *)&v15 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    v8->_unitSize.width = width;
    v8->_unitSize.height = height;
    v10 = [v7 copy];
    grids = v9->_grids;
    v9->_grids = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    gridLayers = v9->_gridLayers;
    v9->_gridLayers = v12;
  }

  return v9;
}

- (CGSize)majorGridSize
{
  [(HKElectrocardiogramGridView *)self unitSize];
  v12 = v4;
  v13 = v3;
  v5 = [(HKElectrocardiogramGridView *)self grids];
  v6 = [v5 firstObject];
  v7 = v6;
  if (v6)
  {
    [v6 scale];
    v8 = v15;
    v9 = v16;
  }

  else
  {
    v8 = 0uLL;
    v9 = 0uLL;
  }

  v14 = vmlaq_n_f64(vmulq_n_f64(v9, v12), v8, v13);

  v11 = v14.f64[1];
  v10 = v14.f64[0];
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)setControlSignalPath:(id)a3
{
  objc_storeStrong(&self->_controlSignalPath, a3);

  [(HKElectrocardiogramGridView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = HKElectrocardiogramGridView;
  [(HKElectrocardiogramGridView *)&v3 layoutSubviews];
  [(HKElectrocardiogramGridView *)self _createLayers];
}

- (void)_createLayers
{
  v89 = *MEMORY[0x1E69E9840];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v3 = [(HKElectrocardiogramGridView *)self gridLayers];
  v4 = [v3 countByEnumeratingWithState:&v83 objects:v88 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v84;
    do
    {
      v7 = 0;
      do
      {
        if (*v84 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v83 + 1) + 8 * v7++) removeFromSuperlayer];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v83 objects:v88 count:16];
    }

    while (v5);
  }

  v8 = [(HKElectrocardiogramGridView *)self gridLayers];
  [v8 removeAllObjects];

  v9 = [(HKElectrocardiogramGridView *)self controlSignalLayer];
  [v9 removeFromSuperlayer];

  [(HKElectrocardiogramGridView *)self setControlSignalLayer:0];
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = [(HKElectrocardiogramGridView *)self grids];
  v10 = 0x1E6979000uLL;
  v74 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
  if (v74)
  {
    v11 = *v80;
    v12 = 0x1E6979000uLL;
    do
    {
      v13 = 0;
      do
      {
        if (*v80 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v79 + 1) + 8 * v13);
        [(HKElectrocardiogramGridView *)self unitSize];
        v16 = v15;
        v18 = v17;
        if (v14)
        {
          [v14 scale];
          m11 = v77.m11;
          m12 = v77.m12;
          m13 = v77.m13;
          m14 = v77.m14;
        }

        else
        {
          m14 = 0.0;
          m12 = 0.0;
          m13 = 0.0;
          m11 = 0.0;
        }

        v23 = v18 * m13 + m11 * v16;
        v24 = v18 * m14 + m12 * v16;
        v25 = *(v10 + 1184);
        [(HKElectrocardiogramGridView *)self bounds];
        v27 = v26;
        [v14 lineWidth];
        v29 = [v25 horizontalLineLayerWithLength:v27 lineWidth:v28];
        [v29 setFillColor:0];
        v30 = [v14 lineColor];
        [v29 setStrokeColor:{objc_msgSend(v30, "CGColor")}];

        v31 = *(v10 + 1184);
        [(HKElectrocardiogramGridView *)self bounds];
        v33 = v32;
        [v14 lineWidth];
        v35 = [v31 verticalLineLayerWithLength:v33 lineWidth:v34];
        [v35 setFillColor:0];
        v36 = [v14 lineColor];
        [v35 setStrokeColor:{objc_msgSend(v36, "CGColor")}];

        v37 = objc_alloc_init(*(v12 + 1072));
        [v37 addSublayer:v29];
        [(HKElectrocardiogramGridView *)self bounds];
        [v37 setInstanceCount:{HKUIRoundedDivide(v38, v24, 0.01) + 1}];
        CATransform3DMakeTranslation(&v78, 0.0, v24, 0.0);
        v77 = v78;
        [v37 setInstanceTransform:&v77];
        v39 = objc_alloc_init(*(v12 + 1072));
        [v39 addSublayer:v35];
        [(HKElectrocardiogramGridView *)self bounds];
        [v39 setInstanceCount:{HKUIRoundedDivide(v40, v23, 0.01) + 1}];
        CATransform3DMakeTranslation(&v76, v23, 0.0, 0.0);
        v77 = v76;
        [v39 setInstanceTransform:&v77];
        if ([v14 axis])
        {
          [(HKElectrocardiogramGridView *)self layer];
          v73 = v35;
          v41 = v29;
          v42 = v12;
          v43 = v11;
          v45 = v44 = v10;
          [v45 insertSublayer:v37 atIndex:0];

          v46 = [(HKElectrocardiogramGridView *)self gridLayers];
          [v46 addObject:v37];

          v10 = v44;
          v11 = v43;
          v12 = v42;
          v29 = v41;
          v35 = v73;
        }

        if (([v14 axis] & 2) != 0)
        {
          v47 = [(HKElectrocardiogramGridView *)self layer];
          [v47 insertSublayer:v39 atIndex:0];

          v48 = [(HKElectrocardiogramGridView *)self gridLayers];
          [v48 addObject:v39];
        }

        ++v13;
      }

      while (v74 != v13);
      v74 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
    }

    while (v74);
  }

  v49 = [(HKElectrocardiogramGridView *)self controlSignalPath];

  if (v49)
  {
    v50 = objc_alloc_init(*(v10 + 1184));
    [(HKElectrocardiogramGridView *)self setControlSignalLayer:v50];

    v51 = [(HKElectrocardiogramGridView *)self controlSignalLayer];
    [v51 setFillColor:0];

    v52 = [(HKElectrocardiogramGridView *)self controlSignalLayer];
    [v52 setLineWidth:1.0];

    v53 = [MEMORY[0x1E69DC888] colorWithWhite:0.4 alpha:1.0];
    v54 = [v53 CGColor];
    v55 = [(HKElectrocardiogramGridView *)self controlSignalLayer];
    [v55 setStrokeColor:v54];

    v56 = *MEMORY[0x1E6979E98];
    v57 = [(HKElectrocardiogramGridView *)self controlSignalLayer];
    [v57 setLineJoin:v56];

    v58 = [(HKElectrocardiogramGridView *)self controlSignalPath];
    v59 = [v58 CGPath];
    v60 = [(HKElectrocardiogramGridView *)self controlSignalLayer];
    [v60 setPath:v59];

    [(HKElectrocardiogramGridView *)self bounds];
    v61 = CGRectGetHeight(v90) * 0.5;
    [(HKElectrocardiogramGridView *)self unitSize];
    v63 = round(v61 / v62);
    [(HKElectrocardiogramGridView *)self unitSize];
    v65 = *(MEMORY[0x1E69792E8] + 80);
    *&v77.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&v77.m33 = v65;
    v66 = *(MEMORY[0x1E69792E8] + 112);
    *&v77.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v77.m43 = v66;
    v67 = *(MEMORY[0x1E69792E8] + 16);
    *&v77.m11 = *MEMORY[0x1E69792E8];
    *&v77.m13 = v67;
    v68 = *(MEMORY[0x1E69792E8] + 48);
    *&v77.m21 = *(MEMORY[0x1E69792E8] + 32);
    *&v77.m23 = v68;
    CATransform3DTranslate(&v75, &v77, 0.0, v64 * v63, 0.0);
    v69 = [(HKElectrocardiogramGridView *)self controlSignalLayer];
    v77 = v75;
    [v69 setTransform:&v77];

    v70 = [(HKElectrocardiogramGridView *)self layer];
    v71 = [(HKElectrocardiogramGridView *)self controlSignalLayer];
    [v70 addSublayer:v71];
  }
}

- (CGSize)unitSize
{
  width = self->_unitSize.width;
  height = self->_unitSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
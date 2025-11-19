@interface GeometryUtilities
+ (void)getTransformCropRectFromSensorCoordsToValidBufferCoordsWithMetadata:(CGFloat)a3@<D0> validBufferRect:(CGFloat)a4@<D1>;
+ (void)initialize;
@end

@implementation GeometryUtilities

+ (void)initialize
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  fig_note_initialize_category_with_default_work_cf();
}

+ (void)getTransformCropRectFromSensorCoordsToValidBufferCoordsWithMetadata:(CGFloat)a3@<D0> validBufferRect:(CGFloat)a4@<D1>
{
  v11 = a1;
  objc_opt_self();
  v37 = 0;
  v12 = MEMORY[0x1E695EFD0];
  v13 = *(MEMORY[0x1E695EFD0] + 16);
  *a2 = *MEMORY[0x1E695EFD0];
  *(a2 + 16) = v13;
  *(a2 + 32) = *(v12 + 32);
  v14 = *(MEMORY[0x1E695F058] + 16);
  v36.origin = *MEMORY[0x1E695F058];
  v36.size = v14;
  v15 = [v11 cmi_intValueForKey:*MEMORY[0x1E69910C8] defaultValue:0 found:&v37];
  if ((v37 & 1) != 0 && (v16 = v15, v17 = [v11 cmi_intValueForKey:*MEMORY[0x1E69910C0] defaultValue:0 found:&v37], v37 == 1) && (v18 = v17, FigCFDictionaryGetCGRectIfPresent()) && (!CGRectIsEmpty(v36) ? (v19 = v36.origin.x / v16, v21 = v36.origin.y / v18, v20 = v36.size.width / v16, v22 = v36.size.height / v18) : (v19 = 0.0, v20 = 1.0, v21 = 0.0, v22 = 1.0), (v38.origin.x = v19, v38.origin.y = v21, v38.size.width = v20, v38.size.height = v22, !CGRectIsEmpty(v38)) && ((v39.origin.x = a3, v39.origin.y = a4, v39.size.width = a5, v39.size.height = a6, !CGRectIsEmpty(v39)) ? (v23 = a3 / a5, v25 = a4 / a6, v24 = a5 / a5, v26 = a6 / a6) : (v23 = 0.0, v24 = 1.0, v25 = 0.0, v26 = 1.0), v40.origin.x = v23, v40.origin.y = v25, v40.size.width = v24, v40.size.height = v26, !CGRectIsEmpty(v40))))
  {
    v27 = *(a2 + 16);
    *&v35.a = *a2;
    *&v35.c = v27;
    *&v35.tx = *(a2 + 32);
    CGAffineTransformTranslate(a2, &v35, v23, v25);
    v28 = *(a2 + 16);
    *&v34.a = *a2;
    *&v34.c = v28;
    *&v34.tx = *(a2 + 32);
    CGAffineTransformScale(&v35, &v34, v24, v26);
    v29 = *&v35.c;
    *a2 = *&v35.a;
    *(a2 + 16) = v29;
    *(a2 + 32) = *&v35.tx;
    v30 = *(a2 + 16);
    *&v34.a = *a2;
    *&v34.c = v30;
    *&v34.tx = *(a2 + 32);
    CGAffineTransformScale(&v35, &v34, 1.0 / v20, 1.0 / v22);
    v31 = *&v35.c;
    *a2 = *&v35.a;
    *(a2 + 16) = v31;
    *(a2 + 32) = *&v35.tx;
    v32 = *(a2 + 16);
    *&v34.a = *a2;
    *&v34.c = v32;
    *&v34.tx = *(a2 + 32);
    CGAffineTransformTranslate(&v35, &v34, -v19, -v21);
    v33 = *&v35.c;
    *a2 = *&v35.a;
    *(a2 + 16) = v33;
    *(a2 + 32) = *&v35.tx;
  }

  else
  {
    FigDebugAssert3();
  }
}

@end
@interface CHStrokePointsVisualization
- (void)drawStrokesFromStrokeProvider:(id)provider inRect:(CGRect)rect context:(CGContext *)context;
@end

@implementation CHStrokePointsVisualization

- (void)drawStrokesFromStrokeProvider:(id)provider inRect:(CGRect)rect context:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v42 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  color = CGColorCreate(DeviceRGB, dbl_1839D0268);
  v33 = CGColorCreate(DeviceRGB, dbl_1839D0288);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v17 = objc_msgSend_orderedStrokes(providerCopy, v12, v13, v14, v15, v16);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v37, v41, 16, v19);
  if (v20)
  {
    v26 = v20;
    v27 = *v38;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v38 != v27)
        {
          objc_enumerationMutation(v17);
        }

        v29 = *(*(&v37 + 1) + 8 * i);
        objc_msgSend_bounds(v29, v21, v22, v23, v24, v25);
        v44.origin.x = x;
        v44.origin.y = y;
        v44.size.width = width;
        v44.size.height = height;
        if (CGRectIntersectsRect(v43, v44))
        {
          Mutable = CGPathCreateMutable();
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = sub_1837D3BC4;
          v36[3] = &unk_1E6DDE2D8;
          v36[4] = Mutable;
          objc_msgSend_enumeratePointsForStroke_interpolationType_resolution_usingBlock_(CHStrokeUtilities, v31, v29, 1, 1, v36);
          CGContextSetStrokeColorWithColor(context, color);
          CGContextSetLineWidth(context, 5.0);
          CGContextAddPath(context, Mutable);
          CGContextStrokePath(context);
          CGPathRelease(Mutable);
          CGContextSetFillColorWithColor(context, v33);
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = sub_1837D3C44;
          v35[3] = &unk_1E6DDE568;
          v35[4] = 0x4000000000000000;
          v35[5] = context;
          objc_msgSend_enumeratePointsForStroke_interpolationType_resolution_usingBlock_(CHStrokeUtilities, v32, v29, 0, 1, v35);
        }
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v21, &v37, v41, 16, v25);
    }

    while (v26);
  }

  CGColorSpaceRelease(DeviceRGB);
  CGColorRelease(color);
  CGColorRelease(v33);
}

@end
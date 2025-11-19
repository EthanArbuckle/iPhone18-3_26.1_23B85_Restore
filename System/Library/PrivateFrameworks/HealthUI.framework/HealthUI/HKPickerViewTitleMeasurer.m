@interface HKPickerViewTitleMeasurer
+ (double)pickerView:(id)a3 maxWidthForComponent:(int64_t)a4;
@end

@implementation HKPickerViewTitleMeasurer

+ (double)pickerView:(id)a3 maxWidthForComponent:(int64_t)a4
{
  v33[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 delegate];
  v9 = 0.0;
  if (v8)
  {
    v10 = v8;
    v11 = [v7 dataSource];
    if (v11)
    {
      v12 = v11;
      v13 = [v7 dataSource];
      v14 = [v13 numberOfComponentsInPickerView:v7];

      if (v14 > a4)
      {
        v15 = [v7 delegate];
        v16 = objc_opt_respondsToSelector();

        v17 = [v7 delegate];
        v18 = objc_opt_respondsToSelector();

        v19 = [v7 delegate];
        v20 = objc_opt_respondsToSelector();

        if (v16 & 1) == 0 || (v18 & 1) != 0 || (v20)
        {
          [HKPickerViewTitleMeasurer pickerView:a2 maxWidthForComponent:a1];
        }

        v21 = [v7 dataSource];
        v22 = [v21 pickerView:v7 numberOfRowsInComponent:a4];

        if (v22 >= 1)
        {
          v23 = 0;
          v24 = *MEMORY[0x1E69DB648];
          do
          {
            v25 = [v7 delegate];
            v26 = [v25 pickerView:v7 titleForRow:v23 forComponent:a4];

            v32 = v24;
            v27 = [a1 _pickerTitleFont];
            v33[0] = v27;
            v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
            [v26 sizeWithAttributes:v28];
            v30 = v29 + 20.0;

            if (v9 < v30)
            {
              v9 = v30;
            }

            ++v23;
          }

          while (v22 != v23);
        }
      }
    }

    else
    {
    }
  }

  return v9;
}

+ (void)pickerView:(uint64_t)a1 maxWidthForComponent:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKPickerViewTitleMeasurer.m" lineNumber:36 description:@"Measurement of views and attributed titles are unsupported."];
}

@end
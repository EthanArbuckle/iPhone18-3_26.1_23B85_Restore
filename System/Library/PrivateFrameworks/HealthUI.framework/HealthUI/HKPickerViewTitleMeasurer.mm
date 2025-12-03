@interface HKPickerViewTitleMeasurer
+ (double)pickerView:(id)view maxWidthForComponent:(int64_t)component;
@end

@implementation HKPickerViewTitleMeasurer

+ (double)pickerView:(id)view maxWidthForComponent:(int64_t)component
{
  v33[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  delegate = [viewCopy delegate];
  v9 = 0.0;
  if (delegate)
  {
    v10 = delegate;
    dataSource = [viewCopy dataSource];
    if (dataSource)
    {
      v12 = dataSource;
      dataSource2 = [viewCopy dataSource];
      v14 = [dataSource2 numberOfComponentsInPickerView:viewCopy];

      if (v14 > component)
      {
        delegate2 = [viewCopy delegate];
        v16 = objc_opt_respondsToSelector();

        delegate3 = [viewCopy delegate];
        v18 = objc_opt_respondsToSelector();

        delegate4 = [viewCopy delegate];
        v20 = objc_opt_respondsToSelector();

        if (v16 & 1) == 0 || (v18 & 1) != 0 || (v20)
        {
          [HKPickerViewTitleMeasurer pickerView:a2 maxWidthForComponent:self];
        }

        dataSource3 = [viewCopy dataSource];
        v22 = [dataSource3 pickerView:viewCopy numberOfRowsInComponent:component];

        if (v22 >= 1)
        {
          v23 = 0;
          v24 = *MEMORY[0x1E69DB648];
          do
          {
            delegate5 = [viewCopy delegate];
            v26 = [delegate5 pickerView:viewCopy titleForRow:v23 forComponent:component];

            v32 = v24;
            _pickerTitleFont = [self _pickerTitleFont];
            v33[0] = _pickerTitleFont;
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
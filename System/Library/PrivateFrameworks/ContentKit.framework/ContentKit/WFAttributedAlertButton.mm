@interface WFAttributedAlertButton
+ (id)buttonWithAttributedTitle:(id)a3 label:(id)a4 selected:(BOOL)a5 style:(int64_t)a6 handler:(id)a7;
@end

@implementation WFAttributedAlertButton

+ (id)buttonWithAttributedTitle:(id)a3 label:(id)a4 selected:(BOOL)a5 style:(int64_t)a6 handler:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = [a1 buttonWithTitle:v13 subtitle:0 selected:v9 style:a6 handler:a7];
  if (v14)
  {
    v15 = [v12 copy];
    v16 = v14[10];
    v14[10] = v15;

    v17 = [v13 copy];
    v18 = v14[11];
    v14[11] = v17;

    v19 = v14;
  }

  return v14;
}

@end
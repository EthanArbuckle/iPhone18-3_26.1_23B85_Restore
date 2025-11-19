@interface EDFontsCollection
- (unint64_t)indexOfObjectWithFontName:(id)a3 color:(id)a4;
@end

@implementation EDFontsCollection

- (unint64_t)indexOfObjectWithFontName:(id)a3 color:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EDCollection *)self count];
  if (v8)
  {
    v9 = 0;
    do
    {
      v10 = [(EDCollection *)self objectAtIndex:v9];
      v11 = [v10 name];
      v12 = v11;
      if (v11 && ([v11 isEqual:v6] & 1) != 0 && (objc_msgSend(v10, "color"), v13 = objc_claimAutoreleasedReturnValue(), (v14 = v13) != 0))
      {
        v15 = [v13 isEqual:v7];

        if (v15)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }

      ++v9;
    }

    while (v8 != v9);
  }

  v9 = -1;
LABEL_11:

  return v9;
}

@end
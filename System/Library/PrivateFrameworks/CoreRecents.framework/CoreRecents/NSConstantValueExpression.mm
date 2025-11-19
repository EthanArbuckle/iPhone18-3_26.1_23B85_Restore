@interface NSConstantValueExpression
- (id)cr_sqlBindings;
@end

@implementation NSConstantValueExpression

- (id)cr_sqlBindings
{
  v4 = [(NSConstantValueExpression *)self constantValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [&stru_10002D468 copy];
    v27 = v5;
    v6 = &v27;
LABEL_7:
    v7 = [NSArray arrayWithObjects:v6 count:1];

    return v7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100014368;
    v23[3] = &unk_10002CC58;
    v23[4] = v4;
    v5 = [v23 copy];
    v26 = v5;
    v6 = &v26;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000143B8;
    v22[3] = &unk_10002CC58;
    v22[4] = v4;
    v5 = [v22 copy];
    v25 = v5;
    v6 = &v25;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = +[NSMutableArray array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v4);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_100001B28;
          v17[3] = &unk_10002CC58;
          v17[4] = v13;
          v14 = [v17 copy];
          [(NSArray *)v7 addObject:v14];
        }

        v10 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v15 = +[NSAssertionHandler currentHandler];
    v16 = objc_opt_class();
    [(NSAssertionHandler *)v15 handleFailureInMethod:a2 object:self file:@"NSPredicateBindings.m" lineNumber:185 description:@"expected only NSString, NSNumber and NSNull types, got %@", NSStringFromClass(v16)];
    return 0;
  }

  return v7;
}

@end
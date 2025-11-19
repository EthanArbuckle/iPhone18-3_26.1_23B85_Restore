@interface ICASEditorCallOutData
- (ICASEditorCallOutData)initWithCollabActivityContextPath:(id)a3 startState:(id)a4 endState:(id)a5;
- (id)toDict;
@end

@implementation ICASEditorCallOutData

- (ICASEditorCallOutData)initWithCollabActivityContextPath:(id)a3 startState:(id)a4 endState:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ICASEditorCallOutData;
  v12 = [(ICASEditorCallOutData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_collabActivityContextPath, a3);
    objc_storeStrong(&v13->_startState, a4);
    objc_storeStrong(&v13->_endState, a5);
  }

  return v13;
}

- (id)toDict
{
  v16[3] = *MEMORY[0x277D85DE8];
  v15[0] = @"collabActivityContextPath";
  v3 = [(ICASEditorCallOutData *)self collabActivityContextPath];
  if (v3)
  {
    v4 = [(ICASEditorCallOutData *)self collabActivityContextPath];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v16[0] = v4;
  v15[1] = @"startState";
  v6 = [(ICASEditorCallOutData *)self startState];
  if (v6)
  {
    v7 = [(ICASEditorCallOutData *)self startState];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v16[1] = v7;
  v15[2] = @"endState";
  v9 = [(ICASEditorCallOutData *)self endState];
  if (v9)
  {
    v10 = [(ICASEditorCallOutData *)self endState];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  v16[2] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end
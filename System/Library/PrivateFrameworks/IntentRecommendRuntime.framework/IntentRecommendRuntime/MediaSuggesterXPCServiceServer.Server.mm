@interface MediaSuggesterXPCServiceServer.Server
- (void)candidatesWithOptionsData:(id)data startDate:(id)date endDate:(id)endDate with:(id)with;
@end

@implementation MediaSuggesterXPCServiceServer.Server

- (void)candidatesWithOptionsData:(id)data startDate:(id)date endDate:(id)endDate with:(id)with
{
  v11 = sub_22C9C6350();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  v19 = _Block_copy(with);
  dataCopy = data;
  dateCopy = date;
  endDateCopy = endDate;
  selfCopy = self;
  v23 = sub_22C9C6310();
  v25 = v24;

  sub_22C9C6340();
  sub_22C9C6340();

  *(swift_allocObject() + 16) = v19;
  sub_22C9BE280();

  sub_22C9BFD9C(v23, v25);

  v26 = *(v12 + 8);
  v26(v16, v11);
  v26(v18, v11);
}

@end
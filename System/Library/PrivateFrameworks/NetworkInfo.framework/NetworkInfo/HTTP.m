@interface HTTP
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
@end

@implementation HTTP

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v26 = self;
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v25 = a6;
  v17 = a7;
  v19 = sub_25B93C1F8;
  v24 = sub_25B946AD8();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v16 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v29);
  v23 = &v16 - v16;
  MEMORY[0x277D82BE0](v8);
  MEMORY[0x277D82BE0](v28);
  MEMORY[0x277D82BE0](v27);
  MEMORY[0x277D82BE0](v25);
  v18 = _Block_copy(v17);
  MEMORY[0x277D82BE0](self);
  sub_25B946AB8();
  v9 = swift_allocObject();
  v10 = v19;
  v11 = v23;
  v12 = v27;
  v13 = v28;
  v14 = v9;
  v15 = v29;
  v20 = v14;
  *(v14 + 16) = v18;
  sub_25B93BC4C(v15, v13, v12, v11, v10, v14);

  (*(v21 + 8))(v23, v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
}

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](a5);
  MEMORY[0x277D82BE0](self);
  sub_25B93C200(a3, a4, a5);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a5);
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a3);
}

@end